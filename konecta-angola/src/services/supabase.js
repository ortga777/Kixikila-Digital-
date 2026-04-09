import { createClient } from '@supabase/supabase-js'

// Substitui estes valores pelos que encontras no teu painel do Supabase 
// (Settings -> API)
const supabaseUrl = 'https://SUA_URL_AQUI.supabase.co'
const supabaseAnonKey = 'SUA_ANON_KEY_LONGA_AQUI'

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

/**
 * FUNÇÃO CORE: Atualiza o Score de Confiança
 * Esta função será chamada sempre que houver uma atividade positiva.
 */
export const updateTrustScore = async (userId, points) => {
  try {
    // 1. Puxa o score atual
    const { data: user, error: fetchError } = await supabase
      .from('users')
      .select('trust_score')
      .eq('id', userId)
      .single()

    if (fetchError) throw fetchError

    // 2. Calcula e atualiza
    const newScore = user.trust_score + points
    const { data, error: updateError } = await supabase
      .from('users')
      .update({ trust_score: newScore })
      .eq('id', userId)

    if (updateError) throw updateError
    
    return { success: true, newScore }
  } catch (err) {
    console.error('Erro na lógica de Score:', err.message)
    return { success: false, error: err.message }
  }
}
