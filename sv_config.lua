SVConfig = {}
SVConfig.SellShops = {
    
    -- [NPC PRODEJ KLENOTNICTVÍ]
    { 
        coords = vec3(383.7144, -1077.9172, 28.4249),  
        ped = 'a_m_m_business_01',
        label = 'Černý klenotník',
        blip = {
            enabled = false,
            sprite = 11,
            color = 11,
            scale = 0.75
        },
        items = {
            
            { item = 'gold_watch', label = 'Zlaté hodinky', price = 650, currency = 'money' }, -- Zlaté hodinky
            { item = 'rolex', label = 'Hodinky', price = 600, currency = 'money' }, -- Hodinky   
            { item = 'gold_bracelet', label = 'Zlatý náramek', price = 550, currency = 'money' }, -- Zlatý náramek
            { item = 'bracelet', label = 'Náramek', price = 500, currency = 'money' }, -- Náramek
            { item = 'necklace', label = 'Náhrdelník', price = 450, currency = 'money' }, -- Náhrdelník
            
        }
    },
}