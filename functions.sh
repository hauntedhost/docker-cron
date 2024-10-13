isTrue() {
    case $1 in
        "True" | "TRUE" | "true" | 1)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

log() {
  if isTrue "$DEBUG"; then
    echo "$(timestamp)" "$@"
  fi
}
