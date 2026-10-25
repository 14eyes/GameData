return {
    GetByNpcRewindData = function(arg1, arg2, arg3, arg4)
        local scene_id = arg2.scene_id
        if scene_id == nil then
            scene_id = sceneData.DefaultSceneID
        elseif scene_id == 0 then
            if sceneData.currSceneID ~= -1 then
                scene_id = sceneData.currSceneID
            end
        end

        local room_id = arg2.room_id
        if not room_id then
            room_id = 0
        end

        local mainQuestID, num, randomNpcAlias, randomFactorValue
        if arg3:IsRandom() then
            randomFactorValue = arg3:GetRandomFactorValue(arg2.pos)
            local v = arg3:GetRandomFactorValue(arg2.id)
            randomNpcAlias = arg3:GetRandomNpcAlias(v)
            num = tonumber(v)
            mainQuestID = arg3.mainQuestID
        else
            randomFactorValue = arg2.pos
            local alias = arg2.alias
            num = arg2.id
            mainQuestID = arg3.mainQuestConfigID
            randomNpcAlias = arg3:GetRealAlias(alias)
        end

        local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
        if dummyPoint == nil then
            return
        end

        if arg2.isOrphan == nil then
            arg2.isOrphan = false
        end

        if arg2.inWater == nil then
            arg2.inWater = false
        end

        local defaultExtMetaInfo = actorMgr:CreateDefaultExtMetaInfo(arg2)
        return {
            alias = randomNpcAlias,
            metaPath = arg2.script,
            configID = num,
            dataIndex = arg2.data_index,
            bornPos = dummyPoint.pos,
            bornEuler = dummyPoint.rot,
            bornShoesOffset = arg2.bornShoesOffset,
            isOrphan = arg2.isOrphan,
            inWater = arg2.inWater,
            isNetwork = true,
            isAutoStart = arg2.isAutoStart ~= false,
            sceneID = scene_id,
            roomID = room_id,
            questID = mainQuestID,
            noPerform = false,
            extMetaInfo = defaultExtMetaInfo
        }
    end,
    GetByGadgetRewindData = function(arg1, arg2, arg3, arg4)
        local scene_id = arg2.scene_id
        if scene_id == nil then
            scene_id = sceneData.DefaultSceneID
        elseif scene_id == 0 then
            if sceneData.currSceneID ~= -1 then
                scene_id = sceneData.currSceneID
            end
        end

        local room_id = arg2.room_id
        if not room_id then
            room_id = 0
        end

        local num, randomGadgetAlias, randomFactorValue
        if arg3:IsRandom() then
            randomFactorValue = arg3:GetRandomFactorValue(arg2.pos)
            randomGadgetAlias = arg3:GetRandomGadgetAlias(arg2.alias)
            num = tonumber(arg3:GetRandomFactorValue(arg2.id))
        else
            randomFactorValue = arg2.pos
            randomGadgetAlias = arg2.alias
            num = arg2.id
        end

        local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
        if dummyPoint == nil then
            return
        end

        local modf = arg4
        if 10000 < modf then
            modf = math.modf(arg4 / 100)
        end

        if arg2.isOrphan == nil then
            arg2.isOrphan = false
        end

        if arg2.inWater == nil then
            arg2.inWater = false
        end

        return {
            alias = randomGadgetAlias,
            metaPath = arg2.script,
            configID = num,
            dataIndex = arg2.data_index,
            bornPos = dummyPoint.pos,
            bornEuler = dummyPoint.rot,
            bornShoesOffset = arg2.bornShoesOffset,
            isOrphan = arg2.isOrphan,
            inWater = arg2.inWater,
            isNetwork = false,
            isAutoStart = false,
            sceneID = scene_id,
            roomID = room_id,
            questID = modf,
            noPerform = false
        }
    end
}
