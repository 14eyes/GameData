local ActorManager = {}
ActorManager.ActorDic = {}
ActorManager.Alias2EntityIDDic = {}
ActorManager.GadgetTriggerDic = {}
ActorManager.WeatherGadgetTriggerDic = {}
ActorManager.dummyActor = require("Actor/DummyActorProxy")
ActorManager.tempDefaultAlias = "Temp"

function ActorManager.OnTest1()
    print("Test1")
    actorMgr:CreateActor(actorMgr, "test", "Actor/Npc/Npc001Test")
end

function ActorManager.OnTest2()
    print("Test2")
    local actor = actorMgr:GetActor("test")
    if actor ~= nil then
        actor:Test()
    end
end

function ActorManager.OnTest3()
    print("Test3")
end

function ActorManager:TestRequireLua(arg1)
    local v = require(arg1)
end

function ActorManager:ResetTestRequireLua(arg1)
    util.unrequire(arg1)
end

function ActorManager:UnRequireLua(arg1)
    util.unrequire(arg1)
end

function ActorManager.InitGlobal()
    print("Actor Manager Init")
    globalActor = actorMgr:CreateActor("global", "Actor/GlobalActorProxy")
end

function ActorManager.InitSubGlobal()
    for i = 1, #globalCfg.initSubActors do
        local initSubActor = globalCfg.initSubActors[i]
        if initSubActor ~= nil then
            if initSubActor.alias ~= nil then
                if initSubActor.metaPath ~= nil then
                    actorMgr:CreateActor(initSubActor.alias, initSubActor.metaPath)
                end
            end
        end
    end

    for i = 1, #globalCfg.initAddSubActors do
        local initAddSubActor = globalCfg.initAddSubActors[i]
        if initAddSubActor ~= nil then
            if initAddSubActor.alias ~= nil then
                if initAddSubActor.metaPath ~= nil then
                    actorMgr:CreateActor(initAddSubActor.alias, initAddSubActor.metaPath)
                end
            end
        end
    end
end

function ActorManager:RegisteSubGlobal(alias, metaPath)
    for i = 1, #globalCfg.initAddSubActors do
        local initAddSubActor = globalCfg.initAddSubActors[i]
        if initAddSubActor ~= nil then
            if initAddSubActor.alias == alias then
                return
            end
        end
    end

    local initAddSubActor = {alias = alias, metaPath = metaPath}
    globalCfg.initAddSubActors[#globalCfg.initAddSubActors + 1] = initAddSubActor
    if initAddSubActor ~= nil then
        if initAddSubActor.alias ~= nil then
            if initAddSubActor.metaPath ~= nil then
                actorMgr:CreateActor(initAddSubActor.alias, initAddSubActor.metaPath)
            end
        end
    end
end

function ActorManager:UnregisteSubGlobal(alias)
    for i = 1, #globalCfg.initAddSubActors do
        local initAddSubActor = globalCfg.initAddSubActors[i]
        if initAddSubActor ~= nil then
            if initAddSubActor.alias == alias then
                globalCfg.initAddSubActors[i] = nil
            end
        end
    end
end

function ActorManager:CreateActor(arg1, metaPath, arg3)
    local actorInternal = ActorManager.GetActorInternal(self, arg1)
    if actorInternal == nil then
        if NG_HSOD_DEBUG then
            if UNITY_EDITOR then
                util.unrequire(metaPath)
            end
        end

        actorInternal = require(metaPath):new()
        actorInternal.metaPath = metaPath
        actorInternal:OnPreInit()
        if arg1 == nil or arg1 == "" then
            arg1 = actorInternal.defaultAlias
        end

        ActorManager.ActorDic[arg1] = actorInternal
        actorInternal:OnInit(arg1)
        actorInternal:OnPostInit()
    end

    if arg3 == nil then
        arg3 = true
    end

    if arg3 then
        actorInternal:Start()
    end

    return actorInternal
end

function ActorManager:CreateActorWithPos(arg1, metaPath, configID, dataIndex, bornPos, bornEuler, isNetwork, isAutoStart, arg9, noPerform, roomID, questID)
    local defaultExtMetaInfo = self:CreateDefaultExtMetaInfo(nil)
    local tbl = {
        alias = self:GetRealAlias(arg1, questID),
        metaPath = metaPath,
        configID = configID,
        dataIndex = dataIndex,
        bornPos = bornPos,
        bornEuler = bornEuler,
        isNetwork = isNetwork,
        isAutoStart = isAutoStart,
        sceneID = arg9,
        roomID = roomID,
        questID = questID,
        noPerform = noPerform,
        isCheckHide = false,
        dontDestroyOnClear = false,
        ditherShow = false,
        ditherDuration = 0,
        bornShoesOffset = 0,
        extMetaInfo = defaultExtMetaInfo
    }

    return ActorManager.CreateActorWithData(self, tbl)
end

function ActorManager:CreateActorWithData(arg1)
    return self:CreateActorWithDataInternal(arg1, false)
end

function ActorManager:CreateDefaultPlatformInfo()
    return {
        sceneId = 0,
        groupId = 0,
        configId = 0,
        questId = 0,
        platformType = 0,
        slotName = "",
        offsetPos = {x = 0, y = 0, z = 0},
        offsetRot = {x = 0, y = 0, z = 0},
        enableCheckDistance = false
    }
end

function ActorManager:CreateDefaultExtMetaInfo(arg1)
    local tbl = {
        isOrphan = false,
        platformInfo = self:CreateDefaultPlatformInfo(),
        inWater = false,
        createSource = 1,
        visionRegionId = 0,
        isEnableSlopeCreate = false,
        isEnableSlopeMove = false,
        tagList = nil,
        spawnStateParams = nil
    }

    if arg1 ~= nil then
        tbl.isOrphan = arg1.isOrphan
        tbl.platformInfo = arg1.platformInfo
        tbl.inWater = arg1.inWater
        if arg1.visionRegionId ~= nil then
            tbl.visionRegionId = arg1.visionRegionId
        end

        if arg1.vision_region_id ~= nil then
            tbl.visionRegionId = arg1.vision_region_id
        end

        tbl.isEnableSlopeCreate = arg1.isEnableSlopeCreate
        tbl.isEnableSlopeMove = arg1.isEnableSlopeMove
        tbl.tagList = arg1.tagList
        if arg1.spawnStateParams ~= nil then
            tbl.spawnStateParams = arg1.spawnStateParams
        end
    end

    return tbl
end

function ActorManager:CreateLocalActorWithData(arg1)
    return self:CreateActorWithDataInternal(arg1, true)
end

function ActorManager:CreateActorWithDataInternal(actorData, isLocal)
    local defaultSceneID = actorData.sceneID
    if defaultSceneID == nil then
        defaultSceneID = sceneData.DefaultSceneID
    elseif defaultSceneID == 0 then
        if sceneData.currSceneID ~= -1 then
            defaultSceneID = sceneData.currSceneID
        end
    end

    local roomID = actorData.roomID
    if roomID == nil then
        if defaultSceneID ~= sceneData.DefaultSceneID then
            if defaultSceneID ~= sceneData.currSceneID then
                goto lbl_28
            end
        end

        roomID = 0
        goto lbl_29
        ::lbl_28::
        roomID = 1
    end

    ::lbl_29::
    local questID = actorData.questID
    if not questID then
        questID = 0
    end

    local alias = actorData.alias
    local metaPath = actorData.metaPath
    local configID = actorData.configID
    local dataIndex = actorData.dataIndex
    local bornPos = actorData.bornPos
    local bornEuler = actorData.bornEuler
    local bornShoesOffset = actorData.bornShoesOffset
    local isNetwork = actorData.isNetwork
    local isAutoStart = actorData.isAutoStart ~= false
    local isCheckHide = actorData.isCheckHide
    local dontDestroyOnClear = actorData.dontDestroyOnClear
    local clearCmd = actorData.clearCmd
    local extMetaInfo = actorData.extMetaInfo
    if not extMetaInfo then
        extMetaInfo = self:CreateDefaultExtMetaInfo()
    end

    local isOrphan = extMetaInfo.isOrphan
    local flag = false
    if extMetaInfo.platformInfo ~= nil then
        flag = 0 < extMetaInfo.platformInfo.configId
    end

    if clearCmd then
        actorUtils.ClearCacheCmdAll(alias)
    end

    if defaultSceneID ~= sceneData.currSceneID then
        if sceneData.currSceneID ~= 1001 then
            if isLocal ~= true and isNetwork then
                if sceneData.currSceneID ~= -1 then
                    actorUtils.NotifyActorPreCreate(alias)
                    if NG_HSOD_DEBUG then
                        if UNITY_EDITOR then
                            util.unrequire(metaPath)
                        end
                    end

                    local v = require(metaPath)
                    actorUtils.NotifyActorCreate(v.actorType, alias, metaPath, configID, bornPos, bornEuler, bornShoesOffset, defaultSceneID, roomID, questID, 0, 0, 0, extMetaInfo)
                end
            end

            self.dummyActor.alias = alias
            return self.dummyActor
        end
    end

    local noPerform = actorData.noPerform
    if noPerform == nil then
        noPerform = true
    end

    local v = actorData.ditherShow == true
    local ditherDuration = actorData.ditherDuration
    local switchNpcActor = actorUtils.TrySwitchNpcActor(configID, questID, alias)
    if switchNpcActor ~= nil then
        local actorInternal = ActorManager.GetActorInternal(self, switchNpcActor)
        ActorManager.ClearActor(self, switchNpcActor)
        if actorInternal ~= nil then
            actorInternal.alias = alias
            ActorManager.ActorDic[alias] = actorInternal
        end
    end

    local actorInternal = ActorManager.GetActorInternal(self, alias)
    if actorInternal ~= nil then
        if actorInternal:IsValid() ~= true then
            ActorManager.ClearActor(self, alias)
            actorInternal = nil
        end
    end

    if actorInternal ~= nil then
        if actorInternal.defaultAlias == ActorManager.tempDefaultAlias then
            if NG_HSOD_DEBUG then
                if UNITY_EDITOR then
                    util.unrequire(metaPath)
                end
            end

            if require(metaPath).defaultAlias ~= actorInternal.defaultAlias then
                ActorManager.ClearActor(self, alias)
                actorInternal = nil
            end
        end
    end

    if actorInternal == nil then
        actorUtils.NotifyActorPreCreate(alias)
        if NG_HSOD_DEBUG then
            if UNITY_EDITOR then
                util.unrequire(metaPath)
            end
        end

        if metaPath == "" or metaPath == nil then
            return
        end

        local require2 = require(metaPath)
        if require2 ~= nil then
            if type(require2) == "table" then
                goto lbl_249
            end
        end

        if NG_HSOD_DEBUG then
            actorUtils.LogError("[Lua] alias:" .. alias .. " mainID:" .. tostring(mainID) .. " check metaPath:" .. metaPath)
        end

        do
            return actorInternal
        end

        ::lbl_249::
        actorInternal = require2:new()
        actorInternal.configID = configID
        actorInternal.dataIndex = dataIndex
        actorInternal.bornSceneID = defaultSceneID
        actorInternal.bornRoomID = roomID
        actorInternal.bornQuestID = questID
        actorInternal.bornPos = bornPos
        actorInternal.bornDir = bornEuler
        actorInternal.bornShoesOffset = bornShoesOffset
        actorInternal.isOrphan = isOrphan
        actorInternal.extMetaInfo = extMetaInfo
        actorInternal.isNetwork = isNetwork
        actorInternal.isAutoStart = isAutoStart
        actorInternal.actorData = actorData
        actorInternal.dontDestroyOnClear = dontDestroyOnClear
        actorInternal.isLocal = isLocal
        local preGetAlias = actorInternal:PreGetAlias()
        actorInternal:OnPreInit()
        if alias == nil or alias == "" then
            if preGetAlias ~= nil then
                alias = preGetAlias
            else
                alias = actorInternal.defaultAlias
            end
        end

        actorInternal.alias = alias
        actorInternal.metaPath = metaPath
        ActorManager.ActorDic[alias] = actorInternal
        actorInternal:OnInit(alias)
        if actorInternal.uActor == nil then
            ActorManager.ActorDic[alias] = nil
            self.dummyActor.alias = alias
            return self.dummyActor
        else
            actorInternal:OnPostInit()
            if actorInternal.MarkDitherShow ~= nil then
                actorInternal:MarkDitherShow(v)
            end

            if not isCheckHide then
                if actorInternal.CheckShow ~= nil then
                    actorInternal:CheckShow()
                end
            end
        end
    else
        local isEnableSlopeCreate = actorInternal.isEnableSlopeCreate
        actorInternal:OnReuse(extMetaInfo)
        actorUtils.NotifyActorPreCreate(alias)
        actorInternal:ClearAllTask()
        actorInternal.bornSceneID = defaultSceneID
        actorInternal.bornRoomID = roomID
        actorInternal.bornQuestID = questID
        actorInternal.bornShoesOffset = bornShoesOffset
        actorInternal.extMetaInfo = extMetaInfo
        actorInternal.isAutoStart = isAutoStart
        if actorInternal.actorType == ActorType.NPC_ACTOR then
            if actorInternal.MarkDitherShow ~= nil then
                actorInternal:MarkDitherShow(v)
            end

            if extMetaInfo.isEnableSlopeCreate or isEnableSlopeCreate then
                if actorInternal.StandbyNoResume ~= nil then
                    actorInternal:StandbyNoResume()
                end

                if actorInternal.SetPos ~= nil then
                    actorInternal:SetPos(bornPos, noPerform)
                end

                if actorInternal.uActor ~= nil then
                    actorInternal.uActor:SetEuler(bornEuler)
                end
            elseif flag then
                if actorInternal.SetPosAndTurnOnPlatform ~= nil then
                    actorInternal:SetPosAndTurnOnPlatform(extMetaInfo.platformInfo)
                end
            else
                if actorInternal.SetPosAndTurnTo ~= nil then
                    actorInternal:SetPosAndTurnTo(bornPos, M.Euler2DirXZ(bornEuler), noPerform)
                else
                    if actorInternal.SetPos ~= nil then
                        actorInternal:SetPos(bornPos, noPerform)
                    end

                    if actorInternal.TurnTo ~= nil then
                        actorInternal:TurnTo(M.Euler2DirXZ(bornEuler))
                    end
                end
            end

            if actorInternal.SetShoesOffsetOnReuse ~= nil then
                actorInternal:SetShoesOffsetOnReuse(bornShoesOffset)
            end
        else
            if actorInternal.SetPosAndTurnTo ~= nil then
                actorInternal:SetPosAndTurnTo(bornPos, M.Euler2DirXZ(bornEuler), noPerform)
            else
                if actorInternal.SetPos ~= nil then
                    actorInternal:SetPos(bornPos, noPerform)
                end

                if actorInternal.TurnTo ~= nil then
                    actorInternal:TurnTo(M.Euler2DirXZ(bornEuler))
                end
            end
        end

        if not isCheckHide then
            if actorInternal.CheckShow ~= nil then
                actorInternal:CheckShow()
            end
        end

        actorInternal:ClearActor()
        actorInternal:ReInit()
        if isLocal ~= true then
            actorUtils.NotifyActorCreate(actorInternal.actorType, alias, metaPath, configID, bornPos, bornEuler, bornShoesOffset, defaultSceneID, roomID, questID, 0, 0, 0, extMetaInfo)
        end

        actorUtils.NotifyActorAutoStart(configID, questID, isAutoStart)
        if isAutoStart then
            actorInternal:Start()
        end
    end

    if questID ~= nil and 0 < questID then
        if actorInternal.ResetAsNoDaily ~= nil then
            actorInternal:ResetAsNoDaily()
        end
    end

    if v then
        if actorInternal.DitherToShowWhenAppear ~= nil then
            actorInternal:DitherToShowWhenAppear(ditherDuration)
        end
    end

    return actorInternal
end

function ActorManager:ChangeActorAlias(actor, alias)
    if actor == nil then
        return
    end

    local v = actor.alias
    ActorManager.ClearActor(self, v)
    actor.alias = alias
    ActorManager.ActorDic[alias] = actor
    print("[Actor]Change Alias from " .. v .. " to " .. alias)
end

function ActorManager:CreateQuestActor(arg1, arg2, arg3, arg4)
    local ok, v = pcall(self.CreateQuestActorInternal, self, arg1, arg2, arg3, arg4)
    if ok == true then
        return v
    else
        if NG_HSOD_DEBUG then
            actorUtils.LogError("[Lua]CreateQuestActor err:" .. tostring(v))
        end
    end

    return 0
end

function ActorManager:CreateQuestActorInternal(arg1, metaPath, mainQuestID, mainQuestConfigID)
    if NG_HSOD_DEBUG then
        if UNITY_EDITOR then
            util.unrequire(metaPath)
        end
    end

    local v = require(metaPath)
    if NG_HSOD_DEBUG then
        if tostring(type(v)) ~= "table" then
            actorUtils.ActorDebugError("~~~~~~~~~~~~~~~~~~~~~~~~ " .. tostring(mainQuestID) .. " no actor! check this!")
            actorUtils.ActorDebugError("create quest actor called " .. tostring(arg1) .. " . " .. tostring(mainQuestID))
            actorUtils.ActorDebugError(tostring(metaPath))
            actorUtils.LogError("[Lua]CreateQuestActor mainID:" .. tostring(mainQuestID) .. "  metaPath:" .. tostring(metaPath))
        end
    end

    local new = v:new()
    new.mainQuestID = mainQuestID
    new.mainQuestConfigID = mainQuestConfigID
    new.metaPath = metaPath
    new:OnPreInit()
    if arg1 == nil or arg1 == "" then
        arg1 = tostring(mainQuestID)
    end

    ActorManager.ActorDic[arg1] = new
    new:OnDataLoad()
    new:OnHandlerBuild()
    new:OnInit(arg1)
    new:OnPostInit()
    return new
end

function ActorManager:GetActor(alias)
    local actor = ActorManager.ActorDic[alias]
    if actor == nil then
        ActorManager.dummyActor.alias = alias
        return ActorManager.dummyActor
    end

    return actor
end

function ActorManager:GetQuestNPCActor(alias, arg2)
    if arg2 ~= nil and arg2 ~= 0 then
        alias = alias .. tostring(arg2)
    end

    local actor = ActorManager.ActorDic[alias]
    if actor == nil then
        ActorManager.dummyActor.alias = alias
        return ActorManager.dummyActor
    end

    return actor
end

function ActorManager:DestroyEntityActor(arg1, arg2, arg3, arg4)
    if arg3 == nil then
        arg3 = false
    end

    if arg4 == nil then
        arg4 = 0
    end

    if arg2 == nil then
        arg2 = sceneData.DefaultSceneID
    else
        if sceneID == 0 then
            if sceneData.currSceneID ~= -1 then
                sceneID = sceneData.currSceneID
            end
        end
    end

    local actorInternal = self:GetActorInternal(arg1)
    if arg3 and actorInternal == nil then
        return
    end

    if actorInternal ~= nil then
        if 0 < arg4 then
            if 0 < actorInternal:GetQuestToken() then
                if arg4 ~= actorInternal:GetQuestToken() then
                    if NG_HSOD_DEBUG then
                        actorUtils.LogError("[Lua]ActorManager DestroyEntityActor alias:" .. tostring(arg1) .. "  questToken:" .. tostring(arg4) .. " npcQuestToken:" .. tostring(actorInternal:GetQuestToken()))
                    end

                    return
                end
            end
        end

        if NG_HSOD_DEBUG then
            actorUtils.Log("[Lua]ActorManager DestroyEntityActor alias:" .. tostring(arg1) .. "  questToken:" .. tostring(arg4) .. " npcQuestToken:" .. tostring(actorInternal:GetQuestToken()))
        end

        actorInternal:Destroy(arg3)
    else
        actorUtils.NotifyActorDestroy(arg1, arg2, true, arg4)
    end

    if arg3 == false then
        actorUtils.DestroyLocalGadget(arg1)
    end
end

function ActorManager:DestroyNpcActorByAlias(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = 0
    end

    local actorInternal = ActorManager.GetActorInternal(self, arg1)
    if actorInternal ~= nil then
        if 0 < arg3 then
            if 0 < actorInternal:GetQuestToken() then
                if arg3 ~= actorInternal:GetQuestToken() then
                    if NG_HSOD_DEBUG then
                        actorUtils.LogError("[Lua]ActorManager DestroyEntityActor alias:" .. tostring(arg1) .. "  questToken:" .. tostring(arg3) .. " npcQuestToken:" .. tostring(actorInternal:GetQuestToken()))
                    end

                    return
                end
            end
        end

        actorInternal:Destroy(arg2)
    elseif arg2 ~= true then
        actorUtils.NotifyNpcActorDestroyByAlias(arg1, true, arg3)
    end
end

function ActorManager:GetActorInternal(arg1)
    return ActorManager.ActorDic[arg1]
end

function ActorManager:ClearActor(arg1)
    ActorManager.ActorDic[arg1] = nil
end

function ActorManager:DestroyActor(arg1, arg2)
    local actorInternal = ActorManager.GetActorInternal(self, arg1)
    if actorInternal ~= nil then
        actorInternal:Destroy(arg2, true)
    end

    ActorManager.ActorDic[arg1] = nil
end

function ActorManager:DestroyActorMeta(arg1)
    local actorInternal = ActorManager.GetActorInternal(self, arg1)
    if actorInternal ~= nil then
        local metaPath = actorInternal.metaPath
        actorInternal:Destroy(false)
        if metaPath ~= nil then
            util.unrequire(metaPath)
        end
    end

    ActorManager.ActorDic[arg1] = nil
end

function ActorManager:Destroy()
    for k, actor in pairs(ActorManager.ActorDic) do
        local metaPath
        if actor ~= nil then
            metaPath = actor.metaPath
        end

        ActorManager.DestroyActor(ActorManager, k, false)
        if metaPath ~= nil then
            util.unrequire(metaPath)
        end
    end
end

function ActorManager:DestroySoft()
    for k, actor in pairs(ActorManager.ActorDic) do
        if actor ~= nil then
            if not actor.dontDestroyOnClear then
                local metaPath
                if actor ~= nil then
                    metaPath = actor.metaPath
                end

                ActorManager.DestroyActor(ActorManager, k, false)
                if metaPath ~= nil then
                    util.unrequire(metaPath)
                end
            end
        end
    end
end

function ActorManager:StartActor(arg1)
    local actorInternal = ActorManager.GetActorInternal(self, arg1)
    if actorInternal ~= nil then
        actorInternal:Start()
    end
end

function ActorManager:SetEntityHandler(arg1, alias2EntityID)
    ActorManager.Alias2EntityIDDic[arg1] = alias2EntityID
end

function ActorManager:GetEntityHandler(arg1)
    return ActorManager.Alias2EntityIDDic[arg1]
end

function ActorManager:DestroyEntityHandler(arg1)
    ActorManager.Alias2EntityIDDic[arg1] = nil
end

function ActorManager:CreateNPCActorData(questID, arg2, arg3, bornPos, bornEuler, ditherShow, ditherDuration, placeList)
    if NG_HSOD_DEBUG then
        assert(arg2.id ~= nil, "CreateNPCActorData : npc alias is null in shareconfig")
        assert(arg2.alias ~= nil, "CreateNPCActorData : npc alias is null in shareconfig")
        assert(arg2.script ~= nil, "CreateNPCActorData : npc script is null in shareconfig")
        assert(arg2.pos ~= nil or bornPos ~= nil, "CreateNPCActorData : npc pos is null in shareconfig or param")
    end

    local tbl = {sceneID = arg2.scene_id}
    local defaultSceneID = tbl.sceneID
    if defaultSceneID == nil then
        defaultSceneID = sceneData.DefaultSceneID
    elseif defaultSceneID == 0 then
        if sceneData.currSceneID ~= -1 then
            defaultSceneID = sceneData.currSceneID
        end
    end

    local alias = arg2.alias
    local id = arg2.id
    if arg3 ~= nil then
        if arg3:IsRandom() then
            local randomFactorValue = arg3:GetRandomFactorValue(arg2.id)
            id = tonumber(randomFactorValue)
            alias = arg3:GetRandomNpcAlias(randomFactorValue)
            if bornPos == nil or bornEuler == nil then
                local v = arg3:GetRandomFactorValue(arg2.pos)
                local dummyPoint = sceneData:GetDummyPoint(defaultSceneID, v)
                if dummyPoint ~= nil then
                    bornPos = dummyPoint.pos
                    bornEuler = dummyPoint.rot
                else
                    bornPos = M.Pos(0, 0, 0)
                    bornEuler = M.Pos(0, 0, 0)
                    if NG_HSOD_DEBUG then
                        actorUtils.LogError("[Lua]Quest CreateNPCActorData Random questId:" .. tostring(questID) .. "  npc pos:" .. tostring(v) .. " currScene: " .. tostring(sceneData.currSceneID))
                    end
                end
            end
        else
            alias = arg3:GetRealAlias(alias, questID)
        end
    end

    tbl.configID = id
    tbl.sceneID = defaultSceneID
    tbl.alias = alias
    tbl.metaPath = arg2.script
    tbl.roomID = arg2.room_id
    if bornPos ~= nil then
        tbl.bornPos = bornPos
    else
        local dummyPoint = sceneData:GetDummyPoint(defaultSceneID, arg2.pos)
        if dummyPoint ~= nil then
            tbl.bornPos = dummyPoint.pos
        else
            if NG_HSOD_DEBUG then
                actorUtils.LogError("[Lua]Quest CreateNPCActorData questId:" .. tostring(questID) .. "  npc pos:" .. tostring(arg2.pos) .. " currScene: " .. tostring(sceneData.currSceneID))
            end

            tbl.bornPos = M.Pos(0, 0, 0)
        end
    end

    if bornEuler ~= nil then
        tbl.bornEuler = bornEuler
    else
        local dummyPoint = sceneData:GetDummyPoint(defaultSceneID, arg2.pos)
        if dummyPoint ~= nil then
            tbl.bornEuler = dummyPoint.rot
        else
            if NG_HSOD_DEBUG then
                actorUtils.LogError("[Lua]Quest CreateNPCActorData questId:" .. tostring(questID) .. "  npc pos:" .. tostring(arg2.pos) .. " currScene: " .. tostring(sceneData.currSceneID))
            end

            tbl.bornEuler = M.Pos(0, 0, 0)
        end
    end

    tbl.questID = questID
    tbl.dataIndex = 0
    tbl.isNetwork = true
    tbl.isAutoStart = arg2.isAutoStart ~= false
    tbl.isCheckHide = false
    tbl.noPerform = true
    tbl.dontDestroyOnClear = false
    tbl.clearCmd = true
    tbl.ditherShow = ditherShow
    tbl.ditherDuration = ditherDuration
    if arg2.bornShoesOffset ~= nil then
        tbl.bornShoesOffset = arg2.bornShoesOffset
    else
        tbl.bornShoesOffset = 0
    end

    local defaultExtMetaInfo = self:CreateDefaultExtMetaInfo(arg2)
    if placeList ~= nil then
        defaultExtMetaInfo.placeList = placeList
    end

    tbl.extMetaInfo = defaultExtMetaInfo
    return tbl
end

function ActorManager:CreateQuestNpcActorInternal(arg1, id, arg3, arg4, arg5, arg6, arg7, arg8, arg9, isOrphan, arg11)
    if arg3 == nil then
        print("try to create npc" .. id .. " on " .. arg1 .. "but data not exist")
        return
    end

    local npcs = arg3.npcs
    if npcs == nil then
        print("try to create npc" .. id .. " on " .. arg1 .. "but npcs not in data")
        return
    end

    if NG_HSOD_DEBUG and not isOrphan then
        actorUtils.CheckActorCreateMainQuestId(arg1)
    end

    local v
    local count = #npcs
    if arg5 == nil or arg5 == 0 then
        for i = 1, count do
            local v2 = npcs[i]
            if v2 ~= nil then
                if id ~= nil then
                    if v2.id == id then
                        v = v2
                        break
                    end
                else
                    v = v2
                    break
                end
            end
        end
    elseif arg5 <= count then
        v = npcs[arg5]
    else
        print("try to create npc" .. id .. " on " .. arg1 .. " index out of range")
    end

    if v ~= nil then
        if isOrphan ~= nil then
            v.isOrphan = isOrphan
        end

        local npcActorData = self:CreateNPCActorData(arg1, v, arg4, arg6, arg7, arg8, arg9, arg11)
        if v.isOrphan == true and npcActorData ~= nil then
            if actorUtils.IsCodeSwitchEnable(5601) == false then
                if actorUtils.IsOrphanConflictWithQuestAnyNpc(id, arg1, npcActorData.bornPos, npcActorData.sceneID) then
                    print("refuse to create orphan npc" .. id .. " on " .. arg1 .. " for conflict with other QuestNpc")
                    return
                end
            end
        end

        return actorMgr:CreateActorWithData(npcActorData)
    end

    return nil
end

function ActorManager:GetRealAlias(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        return arg1
    end

    return arg1 .. arg2
end

function ActorManager:NotifyBanDailyExternal(arg1)
    globalActor:NotifyTo(arg1, NpcUtil.NpcEventType.BANDAILY, true)
end

function ActorManager:NotifyStartDailyExternal(arg1)
    globalActor:NotifyTo(arg1, NpcUtil.NpcEventType.STARTDAILY, true)
end

return ActorManager
