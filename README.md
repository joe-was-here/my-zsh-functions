You need to set your open api key as an environment variable
```
echo 'export OPENAI_API_KEY="your_api_key"' >> ~/.zshrc
```

Put these in a folder somewhere like `~/.zsh-functions`

add this at the end of your `~/.zshrc`

```
# Functions
source ~/.zsh-functions/hey_gpt.zsh
```

Finally run this command to update your open terminal
```
source ~/.bashrc
```
