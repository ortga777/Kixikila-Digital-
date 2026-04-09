import React, { useState } from 'react'
import { supabase } from './services/supabase' // O ficheiro que criaste no micro

function App() {
  const [loading, setLoading] = useState(false)
  const [score, setScore] = useState(850) // Estado inicial

  const registarVenda = async () => {
    setLoading(true)
    // Simulando o ID do utilizador (depois virá do Auth)
    const userId = 'TEU_USER_ID_AQUI' 
    
    // 1. Tenta atualizar no Supabase
    const { data, error } = await supabase
      .from('users')
      .update({ trust_score: score + 2 })
      .eq('id', userId)

    if (!error) {
      setScore(prev => prev + 2)
      alert('Venda Registada! Score subiu! 🚀')
    } else {
      console.error(error)
      alert('Erro ao ligar ao servidor. A guardar localmente...')
    }
    setLoading(false)
  }

  return (
    <div className="app-container">
      {/* ... (resto do HTML que colaste antes) ... */}
      <button 
        className="btn-venda" 
        onClick={registarVenda}
        disabled={loading}
      >
        {loading ? 'A processar...' : '💰 Nova Venda'}
      </button>
    </div>
  )
}
