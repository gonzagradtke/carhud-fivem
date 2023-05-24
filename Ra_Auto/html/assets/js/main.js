window.addEventListener('message', ({ data }) => {
    data.type === 'update' && startUpdatingHud(data.show, data.status)
})