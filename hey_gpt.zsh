hey_gpt() {
    local gpt=$(curl https://api.openai.com/v1/chat/completions -s \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer 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" \
        -d '{
              "model": "gpt-3.5-turbo",
              "messages": [{"role": "user", "content": "'$1'"}],
              "temperature": 0.7
          }')
    # echo $gpt | sed 's/[\x00-\x1f]//g' | jq -rc '.choices[0].message.content'
    echo -E $gpt | jq -r '.choices[0].message.content'
}
alias h=hey_gpt