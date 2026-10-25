require("Actor/ActorCommon")
local EntityActorProxy = require("Actor/EntityActorProxy")

local QuestActorProxy = class("QuestActorProxy", EntityActorProxy)
QuestActorProxy.actorType = ActorType.QUEST_ACTOR
QuestActorProxy.mainQuestID = 0
QuestActorProxy.mainQuestConfigID = 0
QuestActorProxy.shareData = nil
QuestActorProxy.clientData = nil
QuestActorProxy.subStartHandlers = nil
QuestActorProxy.subFinishHandlers = nil
QuestActorProxy.subFailedHandlers = nil
QuestActorProxy.speechBubbleTask = nil
QuestActorProxy.postEnterSceneHandlers = nil
local this
local super
local uActor
QuestActorProxy.AliasCache = nil
QuestActorProxy.NpcTriggerDataDic = nil
QuestActorProxy.WeatherTriggerDataDic = nil

function QuestActorProxy:GetSeriesID()
    if nil == self.uActor then
        return 0
    end

    return self.uActor.seriesID
end

function QuestActorProxy:GetQuestToken()
    if nil == self.uActor then
        return 0
    end

    return self.uActor.questToken
end

function QuestActorProxy:GetRealAlias(arg1)
    if nil == self.AliasCache then
        self.AliasCache = {}
    end

    local randomNpcAlias = self.AliasCache[arg1]
    if randomNpcAlias == nil then
        if self:IsRandom() then
            randomNpcAlias = self:GetRandomNpcAlias(self:GetRandomFactorValue(arg1))
        else
            randomNpcAlias = arg1 .. self.mainQuestID
        end

        self.AliasCache[arg1] = randomNpcAlias
    end

    return randomNpcAlias
end

function QuestActorProxy:OnDataLoad()
    local str = "Quest/Share/Q" .. tostring(self.mainQuestConfigID) .. "ShareConfig"
    main_id = self.mainQuestID
    sub_ids = {}
    rewind_data = {}
    quest_data = {}
    util.do_require(str)
    self.shareData = {
        SubIds = sub_ids,
        RewindData = rewind_data,
        QuestData = quest_data,
        GetRewindData = function(arg1, arg2)
            return arg1.RewindData[tostring(arg2)]
        end,
        GetQuestData = function(arg1, arg2)
            return arg1.QuestData[tostring(arg2)]
        end
    }

    local v = "Quest/Client/Q" .. tostring(self.mainQuestConfigID) .. "ClientConfig"
    self.clientData = require(v)
    util.unrequire(str)
    util.unrequire(v)
    main_id = nil
    sub_ids = nil
    rewind_data = nil
    quest_data = nil
    self:OnDataLoaded()
end

function QuestActorProxy:OnQueryNpcPoints(arg1)
    if self.shareData == nil then
        return
    end

    local rewindData = self.shareData:GetRewindData(arg1)
    if rewindData ~= nil then
        self:RecordNpcPoints(arg1, rewindData.npcs, true)
    end

    local questData = self.shareData:GetQuestData(arg1)
    if questData ~= nil then
        self:RecordNpcPoints(arg1, questData.npcs, false)
    end
end

function QuestActorProxy:OnQueryAvatarPoints(arg1)
    if self.shareData == nil then
        return
    end

    local rewindData = self.shareData:GetRewindData(arg1)
    if rewindData ~= nil then
        if rewindData.avatar ~= nil then
            goto lbl_15
        end
    end

    do
        return
    end

    ::lbl_15::
    self:RecordRewindAvatarPoint(arg1, rewindData.avatar)
end

function QuestActorProxy:RecordRewindAvatarPoint(arg1, arg2)
    if arg2 == nil then
        return
    end

    local scene_id = arg2.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, arg2.pos)
    if dummyPoint == nil then
        return
    end

    local get = CS.MoleMole.QuestAvatarPoint.Get()
    get:SetPos(dummyPoint.pos.x, dummyPoint.pos.y, dummyPoint.pos.z)
    get:SetRot(dummyPoint.rot.x, dummyPoint.rot.y, dummyPoint.rot.z)
    get:SetSceneId(scene_id)
    self.uActor:RecordRewindAvatarPoint(arg1, get)
end

function QuestActorProxy:RecordNpcPoints(arg1, arg2, arg3)
    if arg2 == nil then
        return
    end

    for i = 1, #arg2 do
        local v = arg2[i]
        if v ~= nil then
            if self:CheckDataCondition(v) ~= false then
                local scene_id = v.scene_id
                if scene_id == nil then
                    scene_id = sceneData.DefaultSceneID
                elseif scene_id == 0 then
                    if sceneData.currSceneID ~= -1 then
                        scene_id = sceneData.currSceneID
                    end
                end

                local num, randomFactorValue
                if self:IsRandom() then
                    num = tonumber(self:GetRandomFactorValue(v.id))
                    randomFactorValue = self:GetRandomFactorValue(v.pos)
                else
                    num = v.id
                    randomFactorValue = v.pos
                end

                if randomFactorValue == nil then
                    actorUtils.LogError("[Lua]pos is nil:" .. tostring(questMainID) .. "  npc pos:" .. tostring(posStr) .. " currScene: " .. tostring(sceneData.currSceneID))
                else
                    local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
                    local get = CS.MoleMole.QuestNpcPoint.Get()
                    get:SetId(num)
                    get:SetPos(dummyPoint.pos.x, dummyPoint.pos.y, dummyPoint.pos.z)
                    get:SetSceneId(scene_id)
                    if arg3 then
                        self.uActor:RecordRewindNpcPoint(arg1, get)
                    else
                        self.uActor:RecordQuestNpcPoint(arg1, get)
                    end
                end
            end
        end
    end
end

function QuestActorProxy:LoadCustomFreeStyle()
    if nil == self.uActor then
        return
    end

    if self.customFreeStyleLoaded == true then
        return
    end

    self.customFreeStyleLoaded = true
    if nil == self.customFreeStyle then
        return
    end

    if self:IsRandom() then
        for i, v in ipairs(self.customFreeStyle) do
            local randomFactorValue = self:GetRandomFactorValue(v.npcId)
            self.uActor:LoadCustomFreeStyle(tonumber(randomFactorValue), v.freeStyleList)
        end
    else
        for k, v in pairs(self.customFreeStyle) do
            local npcId = v.npcId
            self.uActor:LoadCustomFreeStyle(v.npcId, v.freeStyleList)
        end
    end
end

function QuestActorProxy:ReleaseCustomFreeStyle()
    if nil == self.uActor then
        return
    end

    self.customFreeStyleLoaded = nil
    if nil == self.customFreeStyle then
        return
    end

    if self:IsRandom() then
        for i, v in ipairs(self.customFreeStyle) do
            local randomFactorValue = self:GetRandomFactorValue(v.npcId)
            self.uActor:ReleaseCustomFreeStyle(tonumber(randomFactorValue), v.freeStyleList)
        end
    else
        for k, v in pairs(self.customFreeStyle) do
            local npcId = v.npcId
            self.uActor:ReleaseCustomFreeStyle(v.npcId, v.freeStyleList)
        end
    end
end

function QuestActorProxy:OnDataLoaded() end

function QuestActorProxy:OnHandlerBuild()
    print("********QuestActorProxy OnHandlerBuild")
    self:OnSubStartHandlerBuild()
    self:OnSubFinishHandlerBuild()
    self:OnSubFailedHandlerBuild()
end

function QuestActorProxy:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
end

function QuestActorProxy:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function QuestActorProxy:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function QuestActorProxy:OnPreInit()
    this = self
    super = self.__super
    self.AliasCache = {}
end

function QuestActorProxy:OnPostInit()
    uActor = self.uActor
    if uActor ~= nil then
        uActor:TryStartActor()
    end
end

function QuestActorProxy:OnInit(alias)
    self.alias = alias
    self.uActor = self:CreateUActor(alias)
    self:Register()
end

function QuestActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.QUEST_ACTOR, arg1)
    local questActor = actorUtils.CreateQuestActor(self.mainQuestID, actor)
    return questActor
end

function QuestActorProxy:OnMainStartHandler(arg1)
    self:LoadCustomFreeStyle()
    self:OnMainStart(arg1)
end

function QuestActorProxy:OnMainStart(arg1)
    print("main start " .. tostring(arg1.QuestMainId))
end

function QuestActorProxy:OnSubStart(arg1)
    self:LoadCustomFreeStyle()
    local str = tostring(arg1.QuestConfigId)
    print("sub start " .. str)
    if self.subStartHandlers == nil then
        return
    end

    local subStartHandler = self.subStartHandlers[str]
    if subStartHandler ~= nil then
        subStartHandler(self, arg1)
    end
end

function QuestActorProxy:OnSubFinished(arg1)
    local str = tostring(arg1.QuestConfigId)
    print("sub finished " .. str)
    if self.subFinishHandlers == nil then
    end

    local subFinishHandler = self.subFinishHandlers[str]
    if subFinishHandler ~= nil then
        subFinishHandler(self, arg1)
    end
end

function QuestActorProxy:OnMainFinishedHandler(arg1)
    self:OnMainFinished(arg1)
    self:DoReturnNpc()
    self:ClearAllNpcTrigger()
    self:ClearAllWeatherTrigger()
    self:ReleaseCustomFreeStyle()
end

function QuestActorProxy:OnMainFinished(arg1)
    if arg1 ~= nil then
        print("main finished " .. tostring(arg1.QuestMainId))
    else
        print("main finished nil never start")
    end
end

function QuestActorProxy:OnMainFailedHandler(arg1)
    self:OnMainFailed(arg1)
    self:DoReturnNpc()
    self:ClearAllNpcTrigger()
    self:ClearAllWeatherTrigger()
    self:ReleaseCustomFreeStyle()
end

function QuestActorProxy:OnMainFailed(arg1)
    if arg1 ~= nil then
        print("main failed " .. tostring(arg1.QuestMainId))
    else
        print("main failed nil never start")
    end
end

function QuestActorProxy:OnMainCanceledHandler(arg1)
    self:OnMainCanceled(arg1)
    self:DoReturnNpc()
    self:ClearAllNpcTrigger()
    self:ClearAllWeatherTrigger()
    self:ReleaseCustomFreeStyle()
end

function QuestActorProxy:OnMainCanceled(arg1)
    if arg1 ~= nil then
        print("main canceled " .. tostring(arg1.QuestMainId))
    else
        print("main canceled nil never start")
    end
end

function QuestActorProxy:OnMainPausedHandler(arg1)
    self:OnMainPaused(arg1)
    self:RecycleAllRes()
end

function QuestActorProxy:OnMainPaused(arg1)
    if arg1 ~= nil then
        print("main paused " .. tostring(arg1.QuestMainId))
    else
        print("main paused nil never start")
    end
end

function QuestActorProxy:RecycleAllRes()
    self:DestroyAllNpc()
    self.uActor:DestroyAllQuestNpc()
    self:ClearAllNpcTrigger()
    self:DestroyAllQuestLocalGadget()
    self:CancelAllStory()
    self:ClearAllWeatherTrigger()
    self:Stop()
    self.coroutineDic = nil
    self.coroutineKeyDic = nil
    self.uActor:LightNotifyAllHideNpc()
    self:RemoveAllQuestTrigger()
    self.uActor:RemoveAllLongDistanceMoveNpcHideRegions()
    self.uActor:RemoveMapPlayMarks()
    actorUtils.DisableMainPageByQuest(self.mainQuestID, false, "")
    self.uActor:DestroyAllGlobalObjects()
    self.uActor:RemoveAllIceCreatureHideRegion(0)
end

function QuestActorProxy:DestroyAllNpc()
    if self.shareData == nil then
        return
    end

    local tbl = {}
    local rewindData = self.shareData.RewindData
    local questData = self.shareData.QuestData
    if rewindData ~= nil then
        for k, v in pairs(rewindData) do
            if v ~= nil then
                if v.npcs ~= nil then
                    local npcs = v.npcs
                    for i = 1, #npcs do
                        local v2 = npcs[i]
                        if v2 ~= nil then
                            local num
                            if self:IsRandom() then
                                num = tonumber(self:GetRandomFactorValue(v2.id))
                            else
                                num = v2.id
                            end

                            if tbl[num] == nil then
                                tbl[num] = true
                                self:DestroyQuestNpcActorByAlias(v2.alias, false)
                            end
                        end
                    end
                end
            end
        end
    end

    if questData ~= nil then
        for k, v in pairs(questData) do
            if v ~= nil then
                if v.npcs ~= nil then
                    local npcs = v.npcs
                    for i = 1, #npcs do
                        local v2 = npcs[i]
                        if v2 ~= nil then
                            local num
                            if self:IsRandom() then
                                num = tonumber(self:GetRandomFactorValue(v2.id))
                            else
                                num = v2.id
                            end

                            if tbl[num] == nil then
                                tbl[num] = true
                                self:DestroyQuestNpcActorByAlias(v2.alias, false)
                            end
                        end
                    end
                end
            end
        end
    end
end

function QuestActorProxy:OnSubFailed(arg1)
    local str = tostring(arg1.QuestConfigId)
    print("sub failed " .. str)
    if self.subFailedHandlers == nil then
        return
    end

    local subFailedHandler = self.subFailedHandlers[str]
    if subFailedHandler ~= nil then
        subFailedHandler(self, arg1)
    end
end

function QuestActorProxy:OnRewindHandler(arg1)
    print("quest rewind " .. tostring(arg1.QuestConfigId) .. tostring(arg1.state))
    self:DoRewind(self.shareData:GetRewindData(arg1.QuestConfigId), arg1)
    self:OnRewind(arg1)
end

function QuestActorProxy:OnSoftRewind(arg1)
    print("quest soft rewind " .. tostring(arg1.QuestConfigId) .. tostring(arg1.state))
    return self:DoSoftRewind(self.shareData:GetRewindData(arg1.QuestConfigId))
end

function QuestActorProxy:DoRewind(arg1, arg2)
    print(arg1)
    if arg1 == nil then
        return
    end

    self:DoRewindNpc(arg1.npcs, nil, arg2)
    self:DoRewindGadget(arg1.gadgets, nil, arg2)
    self:DoRewindItem(arg1.items, nil, arg2)
end

function QuestActorProxy:OnRewind(arg1) end

function QuestActorProxy:DoSoftRewind(arg1)
    if arg1 == nil then
        return
    end

    return false
end

function QuestActorProxy:DoRewindAvatar(arg1, arg2)
    if arg1 == nil then
        return false
    end

    if arg2 == nil then
        arg2 = true
    end

    local scene_id = arg1.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    if arg2 then
        if scene_id ~= sceneData.currSceneID then
            if sceneData.currSceneID ~= 1001 then
                return false
            end
        end
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, arg1.pos)
    if dummyPoint == nil then
        return
    end

    this:TransmitPlayer(0, dummyPoint.pos, dummyPoint.rot)
    actorUtils.SyncAvatarMotion()
    return true
end

function QuestActorProxy:CheckDataCondition(arg1)
    if arg1.isMale ~= nil then
        if arg1.isMale ~= actorUtils.IsMalePlayer() then
            return false
        end
    end

    return true
end

function QuestActorProxy:DoRewindNpc(arg1, arg2, arg3)
    if arg1 == nil then
        return false
    end

    if arg2 == nil then
        arg2 = false
    end

    local flag = false
    for i = 1, #arg1 do
        local v = arg1[i]
        if v ~= nil then
            if self:CheckDataCondition(v) ~= false then
                if v.alias ~= nil then
                    print("Lua want to create npc " .. v.alias)
                else
                    print("Lua want to create npc " .. v.id)
                end

                local scene_id = v.scene_id
                if scene_id == nil then
                    scene_id = sceneData.DefaultSceneID
                elseif scene_id == 0 then
                    if sceneData.currSceneID ~= -1 then
                        scene_id = sceneData.currSceneID
                    end
                end

                if arg2 then
                    if scene_id ~= sceneData.currSceneID then
                        if sceneData.currSceneID ~= 1001 then
                            goto lbl_72
                        end
                    end
                end

                local byNpcRewindData = actorData:GetByNpcRewindData(v, self, arg3.QuestId)
                if byNpcRewindData ~= nil then
                    actorMgr:CreateActorWithData(byNpcRewindData)
                end

                flag = true
            end
        end

        ::lbl_72::
    end

    return flag
end

function QuestActorProxy:DoRewindGadget(arg1, arg2, arg3)
    if arg1 == nil then
        return
    end

    if arg2 == nil then
        arg2 = false
    end

    for i = 1, #arg1 do
        local v = arg1[i]
        if v ~= nil then
            if self:CheckDataCondition(v) ~= false then
                if v.alias ~= nil then
                    print("Lua want to create gadget " .. v.alias)
                else
                    print("Lua want to create gadget " .. v.id)
                end

                local scene_id = v.scene_id
                if scene_id == nil then
                    scene_id = sceneData.DefaultSceneID
                elseif scene_id == 0 then
                    if sceneData.currSceneID ~= -1 then
                        scene_id = sceneData.currSceneID
                    end
                end

                if arg2 then
                    if scene_id ~= sceneData.currSceneID then
                        if sceneData.currSceneID ~= 1001 then
                            goto lbl_122
                        end
                    end
                end

                local randomGadgetAlias, num, randomFactorValue
                if self:IsRandom() then
                    num = tonumber(self:GetRandomFactorValue(v.id))
                    randomGadgetAlias = self:GetRandomGadgetAlias(v.alias)
                    randomFactorValue = self:GetRandomFactorValue(v.pos)
                else
                    num = v.id
                    randomGadgetAlias = v.alias
                    randomFactorValue = v.pos
                end

                local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
                if dummyPoint == nil then
                    print("Dummy Point " .. randomFactorValue .. " is nil")
                else
                    if v.script ~= nil then
                        local byGadgetRewindData = actorData:GetByGadgetRewindData(v, self, arg3.QuestId)
                        if byGadgetRewindData ~= nil then
                            actorMgr:CreateActorWithData(byGadgetRewindData)
                        end
                    else
                        self:SpawnGadgetImpl(num, dummyPoint.pos, dummyPoint.rot, randomGadgetAlias, scene_id, nil, arg3.QuestId, v.room_id)
                    end
                end
            end
        end

        ::lbl_122::
    end
end

function QuestActorProxy:DoRewindItem(arg1, arg2, arg3)
    if arg1 == nil then
        return
    end

    if arg2 == nil then
        arg2 = false
    end

    for i = 1, #arg1 do
        local v = arg1[i]
        if v ~= nil then
            if self:CheckDataCondition(v) ~= false then
                if v.alias ~= nil then
                    print("Lua want to create item " .. v.alias)
                else
                    print("Lua want to create item " .. v.id)
                end

                local scene_id = v.scene_id
                if scene_id == nil then
                    scene_id = sceneData.DefaultSceneID
                elseif scene_id == 0 then
                    if sceneData.currSceneID ~= -1 then
                        scene_id = sceneData.currSceneID
                    end
                end

                if arg2 then
                    if scene_id ~= sceneData.currSceneID then
                        if sceneData.currSceneID ~= 1001 then
                            goto lbl_106
                        end
                    end
                end

                local randomItemAlias, num, randomFactorValue
                if self:IsRandom() then
                    num = tonumber(self:GetRandomFactorValue(v.id))
                    randomItemAlias = self:GetRandomItemAlias(v.alias)
                    randomFactorValue = self:GetRandomFactorValue(v.pos)
                else
                    num = v.id
                    randomItemAlias = v.alias
                    randomFactorValue = v.pos
                end

                local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
                if dummyPoint == nil then
                    print("Dummy Point " .. v.pos .. " is nil")
                else
                    self:SpawnItemImpl(num, dummyPoint.pos, dummyPoint.rot, randomItemAlias, scene_id, v.born_type, arg3.QuestId, v.room_id)
                end
            end
        end

        ::lbl_106::
    end
end

function QuestActorProxy:DoReturnNpc()
    local tbl = {}
    local rewindData = self.shareData.RewindData
    local questData = self.shareData.QuestData
    local ignoreDoReturnNpcForDaily = false
    if self.clientData ~= nil then
        if type(self.clientData) == "table" then
            if self.clientData.IgnoreDoReturnNpcForDaily ~= nil then
                ignoreDoReturnNpcForDaily = self.clientData.IgnoreDoReturnNpcForDaily
            end
        end
    end

    if rewindData ~= nil then
        for k, v in pairs(rewindData) do
            if v ~= nil then
                if v.npcs ~= nil then
                    local npcs = v.npcs
                    for i = 1, #npcs do
                        local v2 = npcs[i]
                        if v2 ~= nil then
                            local num
                            if self:IsRandom() then
                                num = tonumber(self:GetRandomFactorValue(v2.id))
                            else
                                num = v2.id
                            end

                            if tbl[num] == nil then
                                tbl[num] = true
                                self.uActor:ReturnQuestNpc(num, ignoreDoReturnNpcForDaily)
                            end
                        end
                    end
                end
            end
        end
    end

    if questData ~= nil then
        for k, v in pairs(questData) do
            if v ~= nil then
                if v.npcs ~= nil then
                    local npcs = v.npcs
                    for i = 1, #npcs do
                        local v2 = npcs[i]
                        if v2 ~= nil then
                            local num
                            if self:IsRandom() then
                                num = tonumber(self:GetRandomFactorValue(v2.id))
                            else
                                num = v2.id
                            end

                            if tbl[num] == nil then
                                tbl[num] = true
                                self.uActor:ReturnQuestNpc(num, ignoreDoReturnNpcForDaily)
                            end
                        end
                    end
                end
            end
        end
    end
end

function QuestActorProxy:FinishQuest(arg1, arg2)
    self.uActor:TryFinishCurrQuest(arg1, arg2)
end

function QuestActorProxy:FinishQuestID(arg1, arg2)
    self.uActor:TryFinishCurrQuestID(arg1, arg2)
end

function QuestActorProxy:FinishQuestWithParam(arg1, arg2)
    actorUtils.FinishQuestWithParam(arg1, arg2)
end

function QuestActorProxy:UnFinishQuest(arg1, arg2)
    self.uActor:TryUnFinishCurrQuest(arg1, arg2)
end

function QuestActorProxy:GetRandomFactorValue(arg1)
    local v2, v, getRandomFactorValue, uActor
    if type(arg1) == "string" then
        if string.find(arg1, "{") == 1 then
            goto lbl_15
        end
    end

    do
        return arg1
    end

    goto lbl_20
    ::lbl_15::
    uActor = self.uActor
    v = uActor
    getRandomFactorValue = uActor.GetRandomFactorValue
    v2 = arg1
    do
        return getRandomFactorValue(v, v2)
    end

    ::lbl_20::
end

function QuestActorProxy:IsRandom()
    return 100000 <= self.mainQuestID
end

function QuestActorProxy:GetRandomNpcAlias(arg1)
    return "Npc" .. tostring(self.mainQuestID) .. arg1
end

function QuestActorProxy:GetRandomGadgetAlias(arg1)
    return "Gadget" .. tostring(self.mainQuestID) .. arg1
end

function QuestActorProxy:GetRandomItemAlias(arg1)
    return "Item" .. tostring(self.mainQuestID) .. arg1
end

function QuestActorProxy:GetRandomMonsterAlias(arg1)
    return "Monster" .. tostring(self.mainQuestID) .. arg1
end

function QuestActorProxy:GetGivingRecord(arg1)
    return self.uActor:GetGivingRecord(arg1)
end

QuestActorProxy.TaskOnPauseReminder = 1001
QuestActorProxy.TaskOnResumeReminder = 1002

function QuestActorProxy:Register()
    self.uActor:StartQuest("+", self.OnMainStartHandler)
    self.uActor:StartSubQuest("+", self.OnSubStart)
    self.uActor:FinishSubQuest("+", self.OnSubFinished)
    self.uActor:FinishQuest("+", self.OnMainFinishedHandler)
    self.uActor:FailMainQuest("+", self.OnMainFailedHandler)
    self.uActor:CancelMainQuest("+", self.OnMainCanceledHandler)
    self.uActor:PauseMainQuest("+", self.OnMainPausedHandler)
    self.uActor:FailedSubQuest("+", self.OnSubFailed)
    self.uActor:RewindQuest("+", self.OnRewindHandler)
    self.uActor:RegisterSoftRewindQuest(self.OnSoftRewind)
    self.uActor:StartQuestTask("+", self.OnStartQuestTask)
    self.uActor:PostEnterScene("+", self.OnPostEnterScene)
    self.uActor:QueryNpcPoints("+", self.OnQueryNpcPoints)
    self.uActor:QueryAvatarPoints("+", self.OnQueryAvatarPoints)
    self:RegisterTaskCB()
end

function QuestActorProxy:Start()
    print("here quest start")
end

function QuestActorProxy:Destroy(arg1)
    if self.uActor == nil then
        print("QuestActorProxy.Destroy uActor is null " .. tostring(self.alias))
        return
    end

    self:UnregisterTaskCB()
    self.uActor:StartQuest("-", self.OnMainStartHandler)
    self.uActor:StartSubQuest("-", self.OnSubStart)
    self.uActor:FinishSubQuest("-", self.OnSubFinished)
    self.uActor:FinishQuest("-", self.OnMainFinishedHandler)
    self.uActor:FailMainQuest("-", self.OnMainFailedHandler)
    self.uActor:CancelMainQuest("-", self.OnMainCanceledHandler)
    self.uActor:PauseMainQuest("-", self.OnMainPausedHandler)
    self.uActor:FailedSubQuest("-", self.OnSubFailed)
    self.uActor:RewindQuest("-", self.OnRewind)
    self.uActor:UnregisterSoftRewindQuest(self.OnSoftRewind)
    self.uActor:StartQuestTask("-", self.OnStartQuestTask)
    self.uActor:PostEnterScene("-", self.OnPostEnterScene)
    self.uActor:QueryNpcPoints("-", self.OnQueryNpcPoints)
    self.uActor:QueryAvatarPoints("-", self.OnQueryAvatarPoints)
    self:ClearAllNpcTrigger()
    self.NpcTriggerDataDic = nil
    self.WeatherTriggerDataDic = nil
    self:OnDestroy()
    QuestActorProxy.DestroyActor(self.uActor, arg1)
    self.uActor = nil
    self.shareData = nil
    self.clientData = nil
    self.mainQuestID = nil
    self.mainQuestConfigID = nil
    self.subStartHandlers = nil
    self.subFinishHandlers = nil
    self.subFailedHandlers = nil
    self.postEnterSceneHandlers = nil
end

function QuestActorProxy:CreateSpeechBubbleTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if self.speechBubbleTask == nil then
        local qUEST_NPC_SPEECH_BUBBLE_TASK_ID = TaskID.QUEST_NPC_SPEECH_BUBBLE_TASK_ID
        if actorUtils.IsCodeSwitchEnable(5405) then
            qUEST_NPC_SPEECH_BUBBLE_TASK_ID = TaskID.NARRATOR_TASK_ID
        end

        self.speechBubbleTask = self:CreateTask(qUEST_NPC_SPEECH_BUBBLE_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
    end

    if self.speechBubbleTask ~= nil then
        if arg7 == nil then
            arg7 = false
        end

        if arg8 == nil then
            arg8 = false
        end

        self.speechBubbleTask:CreateQuestSpeechBubble(arg1, self.mainQuestID, arg2, arg3, arg5, arg6, arg4, arg7, arg8)
    end
end

function QuestActorProxy:ClearSpeechBubbleTask()
    if self.speechBubbleTask ~= nil then
        self.speechBubbleTask:FinishTask()
        self.speechBubbleTask = nil
    end
end

function QuestActorProxy:StopQuestSpeechBubbleByNpc(arg1)
    if self.speechBubbleTask ~= nil then
        self.speechBubbleTask:StopQuestSpeechBubbleByNpc(arg1, self.mainQuestID)
    end
end

function QuestActorProxy:SetQuestVar(arg1, arg2, arg3)
    self.uActor:SetQuestVar(arg1, arg2, arg3)
end

function QuestActorProxy:SetQuestVarWithInterval(arg1, arg2, arg3, arg4)
    if self.randomseed == nil then
        self.randomseed = os.time()
        math.randomseed(self.randomseed)
    end

    local n = math.random(arg3, arg4)
    self.uActor:SetQuestVar(arg1, arg2, n)
    return n
end

function QuestActorProxy:SetQuestVarByMainId(arg1, arg2)
    actorUtils.SetQuestVarByMainId(self.mainQuestID, arg1, arg2)
end

function QuestActorProxy:SetQuestVarByMainIdWithInterval(arg1, arg2, arg3)
    if self.randomseed == nil then
        self.randomseed = os.time()
        math.randomseed(self.randomseed)
    end

    local n = math.random(arg2, arg3)
    actorUtils.SetQuestVarByMainId(self.mainQuestID, arg1, n)
    return n
end

function QuestActorProxy:GetQuestVar(arg1, arg2)
    return self.uActor:GetQuestVar(arg1, arg2)
end

function QuestActorProxy:PlayCutsceneIndex(arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = false
    end

    self.uActor:PlayCutsceneIndex(arg1, arg2, arg3, arg4, arg5, self.mainQuestID)
end

function QuestActorProxy:PlayCutscene(arg1, arg2, arg3, arg4)
    self.uActor:PlayCutscene(arg1, arg2, arg3, arg4, self.mainQuestID)
end

function QuestActorProxy:RequestInteraction(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = false
    end

    self.uActor:RequestInteraction(self:GetRealAlias(arg1), arg2, arg3)
end

function QuestActorProxy:RequestInteractionForceAlias(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = false
    end

    self.uActor:RequestInteraction(arg1, arg2, arg3)
end

function QuestActorProxy:RequestInteractionEx(arg1, arg2, arg3, arg4)
    local realAlias = arg1
    if arg2 == true then
        realAlias = self.GetRealAlias(self, arg1)
    end

    if arg4 == nil then
        arg4 = false
    end

    self.ReqNpcStartCall(self, realAlias, function(arg1)
        if arg1 ~= nil then
            self:RequestInteractionForceAlias(arg1.alias, arg3, arg4)
        end
    end)
end

function QuestActorProxy:CreateQuestNpc(arg1, arg2, arg3, arg4, arg5)
    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, arg2, questData, self, arg3, nil, nil, arg4, arg5)
end

function QuestActorProxy:CreateQuestNpc_MaleCond(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local selectByPlayerIsMale = self:SelectByPlayerIsMale(arg2, arg3)
    local v = self:SelectByPlayerIsMale(arg4, arg5)
    return self:CreateQuestNpc(arg1, selectByPlayerIsMale, v, arg6, arg7)
end

function QuestActorProxy:CreateQuestNpcById(arg1, arg2, arg3, arg4, arg5)
    local questData = self.shareData:GetQuestData(arg1)
    return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, arg2, questData, self, arg3, nil, nil, arg4, arg5)
end

function QuestActorProxy:CreateQuestNpcWithPos(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, arg2, questData, self, arg3, arg4, arg5, arg6, arg7)
end

function QuestActorProxy:CreateQuestNpcByIdWithPos(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local questData = self.shareData:GetQuestData(arg1)
    return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, arg2, questData, self, arg3, arg4, arg5, arg6, arg7)
end

function QuestActorProxy:CreateQuestOrphanNpc(arg1, arg2, arg3, arg4, arg5, arg6)
    if actorUtils.IsQuestPlaceOccupied(arg6) then
        return
    end

    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    return actorMgr:CreateQuestNpcActorInternal(self.mainQuestID, arg2, questData, self, arg3, nil, nil, arg4, arg5, true, arg6)
end

function QuestActorProxy:CreateQuestTrigger(alias, metaPath, bornPos, bornEuler, sceneID)
    local tbl = {
        alias = alias,
        metaPath = metaPath,
        configID = 70900002,
        dataIndex = 0,
        bornPos = bornPos,
        bornEuler = bornEuler,
        isNetwork = true,
        isAutoStart = false,
        sceneID = sceneID,
        roomID = 0,
        questID = self.mainQuestID
    }

    actorMgr:CreateActorWithData(tbl)
end

function QuestActorProxy:DestroyQuestTrigger(arg1, arg2)
    actorMgr:DestroyEntityActor(arg1, 0, arg2, 0)
end

function QuestActorProxy:RemoveAllQuestTrigger()
    self.uActor:RemoveAllTrigger()
end

function QuestActorProxy:CreateQuestNpcWithTrigger(arg1, arg2, arg3, arg4, arg5, arg6)
    self:CreateQuestNpcById(arg2, arg3, arg4)
    local flag = false
    local v = false
    if arg6 == 2 then
        flag = true
        v = true
    end

    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, 0, "Actor/Gadget/RequestInteractionNPCTrigger", flag, false, v, 0, 0, 0, nil, false, nil)
end

function QuestActorProxy:CreateQuestNpcWithTriggerInVehicle(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self:CreateQuestNpcById(arg2, arg3, arg4)
    local flag = false
    local v = false
    if arg7 == 2 then
        flag = true
        v = true
    end

    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, 0, "Actor/Gadget/RequestInteractionNPCTrigger", flag, false, v, 0, 0, 0, arg8, true, arg9)
end

function QuestActorProxy:CreateQuestNpcWithTriggerBlack(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local str = "Actor/Gadget/CreateNPCWithBlackTrigger"
    if arg7 == 1 or arg7 == 2 then
        str = "Actor/Gadget/CreateNPCWithBlackLightUpTrigger"
    end

    local flag = false
    local v = false
    local flag2 = false
    if arg7 == 2 then
        flag = true
        v = true
        flag2 = true
    end

    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, 0, str, flag, v, flag2, 0.5, arg6, 0.5, nil, false, nil)
end

function QuestActorProxy:CreateQuestNpcWithTriggerBlackEx(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    local str = "Actor/Gadget/CreateNPCWithBlackTrigger"
    if arg9 == 1 or arg9 == 2 then
        str = "Actor/Gadget/CreateNPCWithBlackLightUpTrigger"
    end

    local flag = false
    local v = false
    local flag2 = false
    if arg9 == 2 then
        flag = true
        v = true
        flag2 = true
    end

    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, 0, str, flag, v, flag2, arg6, arg7, arg8, nil, false, nil)
end

function QuestActorProxy:CreateQuestNpcWithTriggerInVehicleBlack(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local str = "Actor/Gadget/CreateNPCWithBlackTrigger"
    if arg9 == 1 or arg9 == 2 then
        str = "Actor/Gadget/CreateNPCWithBlackLightUpTrigger"
    end

    local flag = false
    local v = false
    local flag2 = false
    if arg9 == 2 then
        flag = true
        v = true
        flag2 = true
    end

    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, 0, str, flag, v, flag2, arg6, arg7, arg8, arg10, true, arg11)
end

function QuestActorProxy:CreateRepeatableNpcShowDisappearTrigger(arg1, arg2, arg3, arg4, arg5, arg6)
    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, arg6, "Actor/Gadget/CreateRepeatableNPCTrigger", false, true, false, 0.5, 1, 0.5, nil, false, nil)
end

function QuestActorProxy:CreateNpcWithCameraLookTrigger(arg1, arg2, arg3, arg4, arg5, talkId, arg7, arg8)
    local str = "Actor/Gadget/CreateNPCWithCameraLookTrigger"
    local flag = false
    local v = true
    local flag2 = true
    local n = 0.5
    local n2 = 1
    local n3 = 0.5
    local hideUIWhenCamLook = true
    if arg7 == false then
        hideUIWhenCamLook = false
    end

    if arg8 == false then
        flag2 = false
    end

    local defaultNoBlackData = self:GetDefaultNoBlackData()
    defaultNoBlackData.hideUIWhenCamLook = hideUIWhenCamLook
    defaultNoBlackData.talkId = talkId
    self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg3, arg4, arg5, nil, str, flag, v, flag2, n, n2, n3, nil, false, nil, defaultNoBlackData)
end

function QuestActorProxy:CreateQuestNpcWithTriggerInternal(arg1, questID, id, npcIndex, dist, outDist, arg7, interHighPriority, hideDailyNpc, useQuestMode, durationToBlack, durationKeepBlack, durationFromBlack, targetVehicleFeatureTagList, arg15, hintTextMapId, noBlackData)
    local v = arg1
    if v == nil then
        print("try to creat npc trigger , triggerAlias is nil. " .. id)
        return
    end

    local n = 70900002
    local questData = self.shareData:GetQuestData(questID)
    local mainQuestID = self.mainQuestID
    if questData == nil then
        print("try to create npc" .. id .. " on " .. mainQuestID .. "but data not exist")
        return
    end

    local npcs = questData.npcs
    if npcs == nil then
        print("try to create npc" .. id .. " on " .. mainQuestID .. "but npcs not in data")
        return
    end

    local v2
    for i = 1, #npcs do
        local v3 = npcs[i]
        if v3 ~= nil then
            if id ~= nil then
                if v3.id == id then
                    v2 = v3
                    break
                end
            else
                v2 = v3
                break
            end
        end
    end

    if v2 == nil then
        return
    end

    if NG_HSOD_DEBUG then
        assert(v2.id ~= nil, "CreateQuestNpcWithTrigger : npc alias is null in shareconfig")
        assert(v2.alias ~= nil, "CreateQuestNpcWithTrigger : npc alias is null in shareconfig")
        assert(v2.script ~= nil, "CreateQuestNpcWithTrigger : npc script is null in shareconfig")
        assert(v2.pos ~= nil, "CreateQuestNpcWithTrigger : npc pos is null in shareconfig or param")
    end

    local scene_id = v2.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local pos = sceneData:GetDummyPoint(scene_id, v2.pos).pos
    local rot = sceneData:GetDummyPoint(scene_id, v2.pos).rot
    if durationKeepBlack == nil then
        durationKeepBlack = 2
    end

    if hideDailyNpc == true then
        self:NotifyToNpcById(id, 0, 1, true, {NpcNotifyPriority.Max})
    end

    local hasVehiclePreCondition = false
    if arg15 ~= nil then
        hasVehiclePreCondition = arg15
    end

    local gadgetTrigger = {
        dist = dist,
        outDist = outDist,
        offset = {x = 0, y = 0.8, z = 0},
        questID = questID,
        actorAlias = self.clientData.ActorAlias,
        npcID = id,
        npcIndex = npcIndex,
        npcAlias = v2.alias,
        durationToBlack = durationToBlack,
        durationKeepBlack = durationKeepBlack,
        durationFromBlack = durationFromBlack,
        interHighPriority = interHighPriority,
        hideDailyNpc = hideDailyNpc,
        useQuestMode = useQuestMode,
        mainQuestID = mainQuestID,
        targetVehicleFeatureTagList = targetVehicleFeatureTagList,
        hasVehiclePreCondition = hasVehiclePreCondition,
        hintTextMapId = hintTextMapId,
        noBlackData = noBlackData
    }

    actorMgr.GadgetTriggerDic[v] = gadgetTrigger
    if nil == self.NpcTriggerDataDic then
        self.NpcTriggerDataDic = {}
    end

    self.NpcTriggerDataDic[v] = questID
    if actorMgr:CreateActorWithPos(v, arg7, n, 0, pos, rot, true, false, scene_id) == nil then
        print("try to create trigger, failed" .. id .. " on " .. mainQuestID)
        if hideDailyNpc == true then
            self:NotifyToNpcById(id, 0, 0, true, {NpcNotifyPriority.Max})
        end

        actorMgr.GadgetTriggerDic[v] = nil
        self.NpcTriggerDataDic[v] = nil
        return
    end
end

function QuestActorProxy:RequestInteractionWithCameraLookTrigger(arg1, arg2, arg3, arg4, arg5, arg6, talkId, arg8, arg9)
    local str = "Actor/Gadget/RequestInteractionWithCameraLookTrigger"
    local flag = false
    local v = true
    local n = 0.5
    local n2 = 1
    local n3 = 0.5
    local hideUIWhenCamLook = true
    if arg8 == false then
        hideUIWhenCamLook = false
    end

    if arg9 == false then
        v = false
    end

    local defaultNoBlackData = self:GetDefaultNoBlackData()
    defaultNoBlackData.hideUIWhenCamLook = hideUIWhenCamLook
    defaultNoBlackData.talkId = talkId
    self:CreateCameraLookTriggerInternal(arg1, arg2, arg3, arg4, arg5, arg6, str, flag, v, n, n2, n3, defaultNoBlackData)
end

function QuestActorProxy:CreateNoBlackTalkTriggerWithNpc(arg1, arg2, arg3, arg4, arg5, arg6, talkId, arg8)
    local flag = false
    local v = true
    local n = 0.5
    local n2 = 1
    local n3 = 0.5
    if arg8 == nil then
        self:LogError("CreateNoBlackTalkTriggerWithNpc noBlackData is nil!" .. tostring(self.mainQuestID))
        return
    end

    if talkId ~= nil then
        arg8.talkId = talkId
    end

    if arg3 == 0 then
        self:CreateQuestNpcWithTriggerInternal(arg1, arg2, arg4, arg5, arg6, nil, "Actor/Gadget/CreateNPCWithCameraLookTrigger", flag, true, v, n, n2, n3, nil, false, nil, arg8)
    elseif arg3 == 1 then
        local createDataFromShareConfig = self:GetCreateDataFromShareConfig(arg2, arg4, arg5)
        if createDataFromShareConfig == nil then
            self:LogError("CreateNoBlackTalkTriggerWithNpc fail npc shareData not found " .. tostring(arg4) .. " on " .. tostring(arg2))
            return
        end

        self:CreateQuestNpcById(arg2, arg4, arg5)
        local sceneId = createDataFromShareConfig.sceneId
        local pos = createDataFromShareConfig.pos
        local npcAlias = actorUtils.GetNpcAlias(arg4)
        self:CreateCameraLookTriggerInternal(arg1, arg2, npcAlias, sceneId, pos, arg6, "Actor/Gadget/RequestInteractionWithCameraLookTrigger", flag, v, n, n2, n3, arg8)
    else
        self:LogError("CreateNoBlackTalkTriggerWithNpc type invalid. " .. tostring(arg3))
    end
end

function QuestActorProxy:GetCreateDataFromShareConfig(arg1, id, arg3)
    local questData = self.shareData:GetQuestData(arg1)
    if questData == nil then
        print("try to create npc" .. id .. " on " .. arg1 .. "but questData not exist")
        return nil
    end

    local npcs = questData.npcs
    if npcs == nil then
        print("try to create npc" .. id .. " on " .. arg1 .. "but npcs not in data")
        return nil
    end

    local v
    local count = #npcs
    if arg3 == nil or arg3 == 0 then
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
    elseif arg3 <= count then
        v = npcs[arg3]
    else
        print("try to create npc" .. id .. " on " .. arg1 .. " index out of range")
    end

    if v == nil then
        return nil
    end

    local scene_id = v.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    return {sceneId = scene_id, pos = sceneData:GetDummyPoint(scene_id, v.pos).pos}
end

function QuestActorProxy:GetDefaultNoBlackData()
    return {
        talkId = 0,
        hideUIWhenCamLook = false,
        hidePlayer = 0,
        forceWalk = false,
        delayTime = 0,
        forbidInput = false,
        preTriggerIn = false
    }
end

function QuestActorProxy:CreateCameraLookTriggerInternal(arg1, questID, npcAlias, arg4, arg5, dist, arg7, interHighPriority, useQuestMode, durationToBlack, durationKeepBlack, durationFromBlack, noBlackData)
    local v = arg1
    if v == nil then
        print("try to creat camera look request trigger , triggerAlias is nil. " .. npcAlias)
        return
    end

    if arg4 == nil then
        arg4 = sceneData.DefaultSceneID
    elseif arg4 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg4 = sceneData.currSceneID
        end
    end

    local gadgetTrigger = {
        dist = dist,
        offset = {x = 0, y = 0.8, z = 0},
        questID = questID,
        actorAlias = self.clientData.ActorAlias,
        npcAlias = npcAlias,
        durationToBlack = durationToBlack,
        durationKeepBlack = durationKeepBlack,
        durationFromBlack = durationFromBlack,
        interHighPriority = interHighPriority,
        useQuestMode = useQuestMode,
        mainQuestID = self.mainQuestID,
        noBlackData = noBlackData
    }

    actorMgr.GadgetTriggerDic[v] = gadgetTrigger
    if nil == self.NpcTriggerDataDic then
        self.NpcTriggerDataDic = {}
    end

    self.NpcTriggerDataDic[v] = questID
    if actorMgr:CreateActorWithPos(v, arg7, 70900002, 0, arg5, M.Pos(0, 0, 0), true, false, arg4) == nil then
        print("try to create trigger, failed" .. npcID .. " on " .. questMainID)
        actorMgr.GadgetTriggerDic[v] = nil
        self.NpcTriggerDataDic[v] = nil
        return
    end
end

function QuestActorProxy:GetNpcTriggerData(arg1)
    if nil == self.NpcTriggerDataDic then
        self.NpcTriggerDataDic = {}
    end

    return self.NpcTriggerDataDic[arg1]
end

function QuestActorProxy:ClearNpcTriggerData(arg1)
    if self.NpcTriggerDataDic == nil then
        return
    end

    local gadgetTrigger = actorMgr.GadgetTriggerDic[arg1]
    if gadgetTrigger ~= nil then
        if gadgetTrigger.hideDailyNpc == true then
            self:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
        end
    end

    actorMgr.GadgetTriggerDic[arg1] = nil
    self.NpcTriggerDataDic[arg1] = nil
    if NG_HSOD_DEBUG then
        print("clear npc trigger data, " .. arg1)
    end
end

function QuestActorProxy:DestroyNpcTrigger(arg1)
    local actorInternal = actorMgr:GetActorInternal(arg1)
    if actorInternal ~= nil then
        actorInternal:DestroySelf()
    else
        actorUtils.DestroyLocalGadget(arg1)
    end

    self:ClearNpcTriggerData(arg1)
end

function QuestActorProxy:DestroyRepeatableNpcShowDisappearTrigger(arg1, arg2)
    if arg2 == true then
        local gadgetTrigger = actorMgr.GadgetTriggerDic[arg1]
        if gadgetTrigger ~= nil then
            self:DestroyQuestNpcActorByAlias(gadgetTrigger.npcAlias)
        end
    end

    self:DestroyNpcTrigger(arg1)
end

function QuestActorProxy:ClearNpcTriggerByQuestId(arg1)
    if self.NpcTriggerDataDic ~= nil then
        for k, npcTriggerData in pairs(self.NpcTriggerDataDic) do
            if k ~= nil and npcTriggerData == arg1 then
                local actorInternal = actorMgr:GetActorInternal(k)
                if actorInternal ~= nil then
                    actorInternal:DestroySelf()
                else
                    print("npc trigger is nil, alias is " .. k .. ", while quest id is " .. arg1)
                    actorUtils.DestroyLocalGadget(k)
                end

                local gadgetTrigger = actorMgr.GadgetTriggerDic[k]
                if gadgetTrigger ~= nil then
                    if gadgetTrigger.hideDailyNpc == true then
                        self:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
                    end
                end

                actorMgr.GadgetTriggerDic[k] = nil
                self.NpcTriggerDataDic[k] = nil
            end
        end
    end
end

function QuestActorProxy:ClearAllNpcTrigger()
    if self.NpcTriggerDataDic ~= nil then
        for k, npcTriggerData in pairs(self.NpcTriggerDataDic) do
            if k ~= nil then
                local actorInternal = actorMgr:GetActorInternal(k)
                if actorInternal ~= nil then
                    actorInternal:DestroySelf()
                else
                    print("npc trigger is nil, alias is " .. k)
                    actorUtils.DestroyLocalGadget(k)
                end

                local gadgetTrigger = actorMgr.GadgetTriggerDic[k]
                if gadgetTrigger ~= nil then
                    if gadgetTrigger.hideDailyNpc == true then
                        self:NotifyToNpcById(gadgetTrigger.npcID, 0, 0, true, {NpcNotifyPriority.Max})
                    end
                end

                actorMgr.GadgetTriggerDic[k] = nil
            end
        end

        self.NpcTriggerDataDic = nil
    end

    self:CancelWeather()
end

function QuestActorProxy:CreateSetWeatherTrigger(arg1, arg2, arg3, dist, weatherName)
    if arg1 == nil then
        self:LogError("try to creat SetWeatherTrigger , triggerAlias is nil. " .. tostring(mainQuestId))
        return
    end

    if weatherName == nil then
        self:LogError("try to creat SetWeatherTrigger , weatherName is nil. " .. tostring(mainQuestId))
        return
    end

    local str = arg1 .. "_" .. tostring(self.mainQuestID)
    local v = "Actor/Gadget/SetWeatherTrigger"
    local n = 70900002
    local mainQuestID = self.mainQuestID
    local weatherGadgetTrigger = {
        dist = dist,
        offset = {x = 0, y = 0.8, z = 0},
        questID = 0,
        actorAlias = self.clientData.ActorAlias,
        weatherName = weatherName,
        mainQuestID = mainQuestID,
        useQuestMode = true
    }

    actorMgr.WeatherGadgetTriggerDic[str] = weatherGadgetTrigger
    if nil == self.WeatherTriggerDataDic then
        self.WeatherTriggerDataDic = {}
    end

    self.WeatherTriggerDataDic[str] = mainQuestID
    if actorMgr:CreateActorWithPos(str, v, n, 0, arg3, {x = 0, y = 0, z = 0}, true, false, arg2) == nil then
        print("try to create weather trigger, failed" .. weatherName .. " on " .. mainQuestID)
        actorMgr.WeatherGadgetTriggerDic[str] = nil
        self.WeatherTriggerDataDic[str] = nil
        return
    end
end

function QuestActorProxy:ClearWeatherTrigger(arg1)
    if self.WeatherTriggerDataDic == nil then
        return
    end

    local str = arg1 .. "_" .. tostring(self.mainQuestID)
    if actorMgr.WeatherGadgetTriggerDic[str] == nil then
        return
    end

    local actorInternal = actorMgr:GetActorInternal(str)
    if actorInternal ~= nil then
        actorInternal:DestroySelf()
    else
        actorUtils.DestroyLocalGadget(str)
    end

    actorMgr.WeatherGadgetTriggerDic[str] = nil
    self.WeatherTriggerDataDic[str] = nil
    self:CancelWeather()
end

function QuestActorProxy:ClearAllWeatherTrigger()
    if self.WeatherTriggerDataDic ~= nil then
        for k, weatherTriggerData in pairs(self.WeatherTriggerDataDic) do
            if k ~= nil then
                local actorInternal = actorMgr:GetActorInternal(k)
                if actorInternal ~= nil then
                    actorInternal:DestroySelf()
                else
                    actorUtils.DestroyLocalGadget(k)
                end

                actorMgr.WeatherGadgetTriggerDic[k] = nil
            end
        end

        self:CancelWeather()
        self.WeatherTriggerDataDic = nil
    end
end

function QuestActorProxy:WaitEntityReadyCall(arg1, arg2)
    self.uActor:WaitEntityReadyCall(arg1, arg2)
end

function QuestActorProxy:WaitNPCReadyCall(arg1, arg2)
    local realAlias = self:GetRealAlias(arg1)
    self.uActor:WaitEntityReadyCall({realAlias}, arg2)
end

function QuestActorProxy:WaitNPCReady(arg1, arg2)
    local npcAlias = actorUtils.GetNpcAlias(arg1)
    local realAlias = self:GetRealAlias(npcAlias)
    self.uActor:WaitEntityReadyCall({realAlias}, arg2)
end

function QuestActorProxy:GetQuestNpcActor(arg1)
    local realAlias = self:GetRealAlias(arg1)
    return actorMgr:GetActor(realAlias)
end

function QuestActorProxy:GetQuestNpcActor_MaleCond(arg1, arg2)
    local selectByPlayerIsMale = self:SelectByPlayerIsMale(arg1, arg2)
    return self:GetQuestNpcActor(selectByPlayerIsMale)
end

function QuestActorProxy:GetQuestNpcActorNoDummy(arg1)
    local realAlias = self:GetRealAlias(arg1)
    return actorMgr:GetActorInternal(realAlias)
end

function QuestActorProxy:DestroyQuestNpcActor(arg1, arg2)
    local realAlias = self:GetRealAlias(arg1)
    local questToken = self:GetQuestToken()
    return actorMgr:DestroyEntityActor(realAlias, arg2, nil, questToken)
end

function QuestActorProxy:DestroyQuestNpcActorByAlias(arg1, arg2)
    local realAlias = self:GetRealAlias(arg1)
    local questToken = self:GetQuestToken()
    return actorMgr:DestroyNpcActorByAlias(realAlias, arg2, questToken)
end

function QuestActorProxy:CreateQuestNpcCreateTask(arg1)
    if arg1 == nil then
        return nil
    end

    for i = 1, #arg1 do
        local v = arg1[i]
        arg1[i] = self:GetRealAlias(v)
    end

    return curtainUtils.CreateEntityCreateTask(arg1)
end

function QuestActorProxy:SpawnItemImpl(arg1, arg2, y, arg4, arg5, arg6, arg7, arg8)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if y == nil then
        y = {x = 0.0, y = 0.0, z = 0.0}
    else
        if type(y) == "number" then
            y = {x = 0.0, y = y, z = 0.0}
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if arg6 == nil then
        arg6 = 1
    end

    if not arg7 then
        arg7 = 0
    end

    if not arg8 then
        arg8 = 0
    end

    self.uActor:SpawnItem(arg1, arg2, y, arg5, arg4, arg6, arg7, arg8)
end

function QuestActorProxy:SpawnItem(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if type(arg1) == "number" then
        self:SpawnItemImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        return
    end

    local questConfigId = arg1.QuestConfigId
    self:SpawnItemById(questConfigId, arg2, arg3)
end

function QuestActorProxy:SpawnItemWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local questConfigId = arg1.QuestConfigId
    self:SpawnItemByIdWithPos(questConfigId, arg2, arg3, arg4, arg5, arg6)
end

function QuestActorProxy:SpawnItemById(arg1, id, arg3)
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local item
    if nil ~= arg3 then
        item = questData.items[arg3]
    else
        for i = 1, #questData.items do
            local v = questData.items[i]
            if v.id == id then
                item = v
                break
            end
        end
    end

    if nil == item then
        return
    end

    local scene_id = item.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local randomItemAlias, num, randomFactorValue
    if self:IsRandom() then
        local v = self:GetRandomFactorValue(item.id)
        num = tonumber(v)
        randomItemAlias = self:GetRandomItemAlias(item.alias)
        randomFactorValue = self:GetRandomFactorValue(item.pos)
    else
        num = item.id
        randomItemAlias = item.alias
        randomFactorValue = item.pos
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
    self:SpawnItemImpl(num, dummyPoint.pos, dummyPoint.rot, randomItemAlias, scene_id, item.born_type, arg1, item.room_id)
end

function QuestActorProxy:SpawnItemByIdWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local id
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local item
    if nil ~= arg3 then
        item = questData.items[arg3]
    else
        for i = 1, #questData.items do
            local v = questData.items[i]
            id = v.id
            if id == arg2 then
                item = v
                break
            end
        end
    end

    if nil == item then
        return
    end

    local v
    local alias, num
    if self:IsRandom() then
        local randomFactorValue = self:GetRandomFactorValue(item.id)
        num = tonumber(randomFactorValue)
        local this = self
        local getRandomItemAlias = self.GetRandomItemAlias
        local alias2 = arg6 or id
        if not arg6 then
            alias2 = item.alias
        end

        alias = getRandomItemAlias(this, alias2)
    else
        num = item.id
        alias = arg6 or v
        if not arg6 then
            alias = item.alias
        end
    end

    self:SpawnItemImpl(num, arg4, arg5, alias, item.scene_id, item.born_type, arg1, item.room_id)
end

function QuestActorProxy:SpawnMonsterImpl(arg1, arg2, arg3, y, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg8 == nil then
        arg8 = sceneData.DefaultSceneID
    elseif arg8 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg8 = sceneData.currSceneID
        end
    end

    if y == nil then
        y = {x = 0.0, y = 0.0, z = 0.0}
    else
        if type(y) == "number" then
            y = {x = 0.0, y = y, z = 0.0}
        end
    end

    if arg6 == nil then
        arg6 = 1.0
    end

    if arg9 == nil then
        arg9 = 0
    end

    if arg7 == nil then
        arg7 = ""
    end

    if not arg10 then
        arg10 = 0
    end

    self.uActor:SpawnMonster(arg1, arg2, arg3, y, arg6, arg8, arg7, arg9, arg10)
end

function QuestActorProxy:SpawnMonster(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if type(arg1) == "number" then
        self:SpawnMonsterImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
        return
    end

    local questConfigId = arg1.QuestConfigId
    self:SpawnMonsterById(questConfigId, arg2, arg3)
end

function QuestActorProxy:SpawnMonsterWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local questConfigId = arg1.QuestConfigId
    self:SpawnMonsterByIdWithPos(questConfigId, arg2, arg3, arg4, arg5, arg6)
end

function QuestActorProxy:SpawnMonsterById(arg1, id, arg3)
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local monster
    if nil ~= arg3 then
        monster = questData.monsters[arg3]
    else
        for i = 1, #questData.monsters do
            local v = questData.monsters[i]
            if v.id == id then
                monster = v
                break
            end
        end
    end

    if nil == monster then
        return
    end

    local scene_id = monster.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local randomMonsterAlias, num, randomFactorValue
    if self:IsRandom() then
        local v = self:GetRandomFactorValue(monster.id)
        num = tonumber(v)
        randomMonsterAlias = self:GetRandomMonsterAlias(monster.alias)
        randomFactorValue = self:GetRandomFactorValue(monster.pos)
    else
        num = monster.id
        randomMonsterAlias = monster.alias
        randomFactorValue = monster.pos
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
    self:SpawnMonsterImpl(num, monster.level, dummyPoint.pos, dummyPoint.rot, nil, monster.scale, randomMonsterAlias, scene_id, arg1, monster.room_id)
end

function QuestActorProxy:SpawnMonsterByIdWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local id
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local monster
    if nil ~= arg3 then
        monster = questData.monsters[arg3]
    else
        for i = 1, #questData.monsters do
            local v = questData.monsters[i]
            id = v.id
            if id == arg2 then
                monster = v
                break
            end
        end
    end

    if nil == monster then
        return
    end

    local v
    local alias, num
    if self:IsRandom() then
        local randomFactorValue = self:GetRandomFactorValue(monster.id)
        num = tonumber(randomFactorValue)
        local this = self
        local getRandomMonsterAlias = self.GetRandomMonsterAlias
        local alias2 = arg6 or id
        if not arg6 then
            alias2 = monster.alias
        end

        alias = getRandomMonsterAlias(this, alias2)
    else
        num = monster.id
        alias = arg6 or v
        if not arg6 then
            alias = monster.alias
        end
    end

    self:SpawnMonsterImpl(num, monster.level, arg4, arg5, nil, monster.scale, alias, monster.scene_id, arg1, monster.room_id)
end

function QuestActorProxy:SpawnGadgetImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if not arg7 then
        arg7 = 0
    end

    if not arg8 then
        arg8 = 0
    end

    self.uActor:SpawnGadget(arg1, arg2, arg3, arg5, arg4, arg7, arg8)
end

function QuestActorProxy:SpawnGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if type(arg1) == "number" then
        self:SpawnGadgetImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        return
    end

    local questConfigId = arg1.QuestConfigId
    self:SpawnGadgetById(questConfigId, arg2, arg3)
end

function QuestActorProxy:SpawnGadgetWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local questConfigId = arg1.QuestConfigId
    self:SpawnGadgetByIdWithPos(questConfigId, arg2, arg3, arg4, arg5, arg6)
end

function QuestActorProxy:SpawnGadgetById(arg1, id, arg3)
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local gadget
    if nil ~= arg3 then
        gadget = questData.gadgets[arg3]
    else
        for i = 1, #questData.gadgets do
            local v = questData.gadgets[i]
            if v.id == id then
                gadget = v
                break
            end
        end
    end

    if nil == gadget then
        return
    end

    local scene_id = gadget.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local randomGadgetAlias, num, randomFactorValue
    if self:IsRandom() then
        local v = self:GetRandomFactorValue(gadget.id)
        num = tonumber(v)
        randomGadgetAlias = self:GetRandomGadgetAlias(gadget.alias)
        randomFactorValue = self:GetRandomFactorValue(gadget.pos)
    else
        num = gadget.id
        randomGadgetAlias = gadget.alias
        randomFactorValue = gadget.pos
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
    self:SpawnGadgetImpl(num, dummyPoint.pos, dummyPoint.rot, randomGadgetAlias, scene_id, nil, arg1, gadget.room_id)
end

function QuestActorProxy:SpawnGadgetByIdWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local id
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local gadget
    if nil ~= arg3 then
        gadget = questData.gadgets[arg3]
    else
        for i = 1, #questData.gadgets do
            local v = questData.gadgets[i]
            id = v.id
            if id == arg2 then
                gadget = v
                break
            end
        end
    end

    if nil == gadget then
        return
    end

    local v
    local alias, num
    if self:IsRandom() then
        local randomFactorValue = self:GetRandomFactorValue(gadget.id)
        num = tonumber(randomFactorValue)
        local this = self
        local getRandomGadgetAlias = self.GetRandomGadgetAlias
        local alias2 = arg6 or id
        if not arg6 then
            alias2 = gadget.alias
        end

        alias = getRandomGadgetAlias(this, alias2)
    else
        num = gadget.id
        alias = arg6 or v
        if not arg6 then
            alias = gadget.alias
        end
    end

    self:SpawnGadgetImpl(num, arg4, arg5, alias, gadget.scene_id, nil, arg1, gadget.room_id)
end

function QuestActorProxy:SpawnChestImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if arg6 == nil then
        arg6 = 0
    end

    if arg7 == nil then
        arg7 = false
    end

    if arg8 == nil then
        arg8 = 0
    end

    if not arg9 then
        arg9 = 0
    end

    self.uActor:SpawnChest(arg1, arg2, arg3, arg5, arg4, arg6, arg7, arg8, arg9)
end

function QuestActorProxy:SpawnChest(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if type(arg1) == "number" then
        self:SpawnChestImpl(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        return
    end

    local questConfigId = arg1.QuestConfigId
    self:SpawnChestById(questConfigId, arg2, arg3)
end

function QuestActorProxy:SpawnChestWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local questConfigId = arg1.QuestConfigId
    self:SpawnChestByIdWithPos(questConfigId, arg2, arg3, arg4, arg5, arg6)
end

function QuestActorProxy:SpawnChestById(arg1, id, arg3)
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local gadget
    if nil ~= arg3 then
        gadget = questData.gadgets[arg3]
    else
        for i = 1, #questData.gadgets do
            local v = questData.gadgets[i]
            if v.id == id then
                gadget = v
                break
            end
        end
    end

    if nil == gadget then
        return
    end

    local scene_id = gadget.scene_id
    if scene_id == nil then
        scene_id = sceneData.DefaultSceneID
    elseif scene_id == 0 then
        if sceneData.currSceneID ~= -1 then
            scene_id = sceneData.currSceneID
        end
    end

    local randomGadgetAlias, num, randomFactorValue
    if self:IsRandom() then
        local v = self:GetRandomFactorValue(gadget.id)
        num = tonumber(v)
        randomGadgetAlias = self:GetRandomGadgetAlias(gadget.alias)
        randomFactorValue = self:GetRandomFactorValue(gadget.pos)
    else
        num = gadget.id
        randomGadgetAlias = gadget.alias
        randomFactorValue = gadget.pos
    end

    local dummyPoint = sceneData:GetDummyPoint(scene_id, randomFactorValue)
    self:SpawnChestImpl(num, dummyPoint.pos, dummyPoint.rot, randomGadgetAlias, scene_id, gadget.chest_drop_id, gadget.is_show_cutscene, arg1, gadget.room_id)
end

function QuestActorProxy:SpawnChestByIdWithPos(arg1, arg2, arg3, arg4, arg5, arg6)
    local id
    local questData = self.shareData:GetQuestData(arg1)
    if nil == questData then
        return
    end

    local gadget
    if nil ~= arg3 then
        gadget = questData.gadgets[arg3]
    else
        for i = 1, #questData.gadgets do
            local v = questData.gadgets[i]
            id = v.id
            if id == arg2 then
                gadget = v
                break
            end
        end
    end

    if nil == gadget then
        return
    end

    local v
    local alias, num
    if self:IsRandom() then
        local randomFactorValue = self:GetRandomFactorValue(gadget.id)
        num = tonumber(randomFactorValue)
        local this = self
        local getRandomGadgetAlias = self.GetRandomGadgetAlias
        local alias2 = arg6 or id
        if not arg6 then
            alias2 = gadget.alias
        end

        alias = getRandomGadgetAlias(this, alias2)
    else
        num = gadget.id
        alias = arg6 or v
        if not arg6 then
            alias = gadget.alias
        end
    end

    self:SpawnChestImpl(num, arg4, arg5, alias, gadget.scene_id, gadget.chest_drop_id, gadget.is_show_cutscene, arg1, gadget.room_id)
end

function QuestActorProxy:SayNarrator(arg1)
    self.uActor:SayNarrator(arg1, self.mainQuestID)
end

local function func(arg1, arg2)
    return arg1.x == arg2.x
end

function QuestActorProxy:TransmitPlayerWithQuestIdByData(questId, arg2, arg3, tFinishCallback, tBlackScreenCallback, tTask)
    local v
    local transmitCfgByQuestId = self:GetTransmitCfgByQuestId(questId, arg2)
    local point_id, dummyPoint, scene_id
    if nil ~= transmitCfgByQuestId then
        point_id = transmitCfgByQuestId.point_id
        scene_id = transmitCfgByQuestId.scene_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgByQuestId.scene_id, transmitCfgByQuestId.pos)
    else
        actorUtils.LogError("[Lua] Cannot get transmit pos due to config missing. questId: " .. tostring(questId) .. " pointId: " .. tostring(v))
        return false
    end

    if nil ~= arg3 then
        local tbl = {}
        for k, value in pairs(arg3) do
            tbl[k] = value
        end

        tbl.questId = questId
        tbl.sceneId = scene_id
        tbl.pos = dummyPoint.pos
        tbl.rot = dummyPoint.rot
        tbl.pointId = point_id
        tbl.tFinishCallback = tFinishCallback
        tbl.tBlackScreenCallback = tBlackScreenCallback
        tbl.tTask = tTask
        return self:TransmitPlayerUseData(tbl)
    else
        return self:TransmitPlayer(scene_id, dummyPoint.pos, dummyPoint.rot, tFinishCallback, tBlackScreenCallback, tTask, questId, point_id)
    end
end

function QuestActorProxy:TransmitPlayerByData(arg1, arg2, arg3, arg4, arg5, arg6)
    local questConfigId = arg1.QuestConfigId
    return self:TransmitPlayerWithQuestIdByData(questConfigId, arg2, arg3, arg4, arg5, arg6)
end

function QuestActorProxy:TransmitPlayerByPos(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local transmitCfgByPos = self:GetTransmitCfgByPos(arg1, arg2, arg3, arg4)
    local questConfigId = 0
    local point_id = 0
    if nil ~= transmitCfgByPos then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByPos.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayer(arg2, arg3, arg4, arg5, arg6, arg7, questConfigId, point_id)
end

function QuestActorProxy:TransmitPlayerWithTextByPos(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    local transmitCfgByPos = self:GetTransmitCfgByPos(arg1, arg2, arg3, arg4)
    local questConfigId = 0
    local point_id = 0
    if nil ~= transmitCfgByPos then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByPos.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayerWithText(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, questConfigId, point_id)
end

function QuestActorProxy:TransmitPlayerWithDialogTextByPos(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    local transmitCfgByPos = self:GetTransmitCfgByPos(arg1, arg2, arg3, arg4)
    local questConfigId = 0
    local point_id = 0
    if nil ~= transmitCfgByPos then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByPos.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayerWithDialogText(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, questConfigId, point_id, arg10)
end

function QuestActorProxy:TransmitPlayerByDummyPoint(arg1, arg2, arg3, arg4, arg5, arg6)
    local transmitCfgByDummyPoint = self:GetTransmitCfgByDummyPoint(arg1, arg2, arg3)
    local questConfigId = 0
    local point_id = 0
    local dummyPoint = sceneData:GetDummyPoint(arg2, arg3)
    if nil ~= transmitCfgByDummyPoint then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByDummyPoint.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayer(arg2, dummyPoint.pos, dummyPoint.rot, arg4, arg5, arg6, questConfigId, point_id)
end

function QuestActorProxy:TransmitPlayerWithTextByDummyPoint(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local transmitCfgByDummyPoint = self:GetTransmitCfgByDummyPoint(arg1, arg2, arg3)
    local questConfigId = 0
    local point_id = 0
    local dummyPoint = sceneData:GetDummyPoint(arg2, arg3)
    if nil ~= transmitCfgByDummyPoint then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByDummyPoint.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayerWithText(arg2, dummyPoint.pos, dummyPoint.rot, arg4, arg5, arg6, arg7, arg8, questConfigId, point_id)
end

function QuestActorProxy:TransmitPlayerWithDialogTextByDummyPoint(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    local transmitCfgByDummyPoint = self:GetTransmitCfgByDummyPoint(arg1, arg2, arg3)
    local questConfigId = 0
    local point_id = 0
    local dummyPoint = sceneData:GetDummyPoint(arg2, arg3)
    if nil ~= transmitCfgByDummyPoint then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgByDummyPoint.point_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
    end

    return self:TransmitPlayerWithDialogText(arg2, dummyPoint.pos, dummyPoint.rot, arg4, arg5, arg6, arg7, arg8, questConfigId, point_id, arg9)
end

function QuestActorProxy:TransmitPlayerById(arg1, arg2, arg3, arg4, arg5, arg6)
    local transmitCfgById = self:GetTransmitCfgById(arg1, arg2)
    local point_id, questConfigId, dummyPoint, scene_id
    if nil ~= transmitCfgById then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgById.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgById.scene_id, transmitCfgById.pos)
        scene_id = transmitCfgById.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
        return false
    end

    return self:TransmitPlayer(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, questConfigId, point_id, arg6)
end

function QuestActorProxy:TransmitPlayerWithTextById(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local transmitCfgById = self:GetTransmitCfgById(arg1, arg2)
    local point_id, questConfigId, dummyPoint, scene_id
    if nil ~= transmitCfgById then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgById.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgById.scene_id, transmitCfgById.pos)
        scene_id = transmitCfgById.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
        return false
    end

    return self:TransmitPlayerWithText(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, arg6, arg7, questConfigId, point_id)
end

function QuestActorProxy:TransmitPlayerWithDialogTextById(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local transmitCfgById = self:GetTransmitCfgById(arg1, arg2)
    local point_id, questConfigId, dummyPoint, scene_id
    if nil ~= transmitCfgById then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgById.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgById.scene_id, transmitCfgById.pos)
        scene_id = transmitCfgById.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1.QuestConfigId))
        return false
    end

    return self:TransmitPlayerWithDialogText(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, arg6, arg7, questConfigId, point_id, arg8)
end

function QuestActorProxy:TransmitPlayerByQuestId(arg1, arg2, arg3, arg4, arg5, arg6)
    local transmitCfgByQuestId = self:GetTransmitCfgByQuestId(arg1, arg2)
    local point_id, dummyPoint, scene_id
    if nil ~= transmitCfgByQuestId then
        point_id = transmitCfgByQuestId.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgByQuestId.scene_id, transmitCfgByQuestId.pos)
        scene_id = transmitCfgByQuestId.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1))
        return false
    end

    return self:TransmitPlayer(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, arg1, point_id, arg6)
end

function QuestActorProxy:TransmitPlayerWithTextByQuestId(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    local transmitCfgByQuestId = self:GetTransmitCfgByQuestId(arg1, arg2)
    local point_id, dummyPoint, scene_id
    if nil ~= transmitCfgByQuestId then
        point_id = transmitCfgByQuestId.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgByQuestId.scene_id, transmitCfgByQuestId.pos)
        scene_id = transmitCfgByQuestId.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1))
        return false
    end

    return self:TransmitPlayerWithText(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, arg6, arg7, arg1, point_id)
end

function QuestActorProxy:TransmitPlayerWithDialogTextByQuestId(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local transmitCfgByQuestId = self:GetTransmitCfgByQuestId(arg1, arg2)
    local point_id, dummyPoint, scene_id
    if nil ~= transmitCfgByQuestId then
        point_id = transmitCfgByQuestId.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgByQuestId.scene_id, transmitCfgByQuestId.pos)
        scene_id = transmitCfgByQuestId.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1))
        return false
    end

    return self:TransmitPlayerWithDialogText(scene_id, dummyPoint.pos, dummyPoint.rot, arg3, arg4, arg5, arg6, arg7, arg1, point_id, arg8)
end

function QuestActorProxy:TransmitPlayerUseCustomizedTplById(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local transmitCfgById = self:GetTransmitCfgById(arg1, arg2)
    local n = 0
    local flag = false
    if arg4 == true then
        flag = true
    end

    local point_id, questConfigId, dummyPoint, scene_id
    if nil ~= transmitCfgById then
        questConfigId = arg1.QuestConfigId
        point_id = transmitCfgById.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgById.scene_id, transmitCfgById.pos)
        scene_id = transmitCfgById.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(n))
        return false
    end

    return self:TransmitPlayerUseCustomizedTplId(scene_id, dummyPoint.pos, dummyPoint.rot, questConfigId, point_id, arg3, flag, arg5, arg6, arg7, arg8)
end

function QuestActorProxy:TransmitPlayerUseCustomizedTplByQuestId(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    local transmitCfgByQuestId = self:GetTransmitCfgByQuestId(arg1, arg2)
    local flag = false
    if arg4 == true then
        flag = true
    end

    local point_id, dummyPoint, scene_id
    if nil ~= transmitCfgByQuestId then
        point_id = transmitCfgByQuestId.point_id
        dummyPoint = sceneData:GetDummyPoint(transmitCfgByQuestId.scene_id, transmitCfgByQuestId.pos)
        scene_id = transmitCfgByQuestId.scene_id
    else
        actorUtils.LogError("[Lua]Quest Transmit with no share config!!! questId:" .. tostring(arg1))
        return false
    end

    return self:TransmitPlayerUseCustomizedTplId(scene_id, dummyPoint.pos, dummyPoint.rot, arg1, point_id, arg3, flag, arg5, arg6, arg7, arg8)
end

function QuestActorProxy:ShowBlackScreenWithDialogText(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    return self:ShowBlackScreenInQuest(arg1, arg2, arg3, arg4, arg5, arg6, self.mainQuestID, arg7, arg8, arg9, arg10)
end

function QuestActorProxy:GetTransmitCfgByPos(arg1, scene_id, arg3, arg4)
    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    local v
    if nil ~= questData then
        if nil ~= questData.transmit_points then
            goto lbl_13
        end
    end

    v = nil
    do
        return v
    end

    ::lbl_13::
    for k, transmit_point in pairs(questData.transmit_points) do
        if transmit_point.scene_id == scene_id then
            if transmit_point.pos ~= nil then
                local dummyPoint = sceneData:GetDummyPoint(transmit_point.scene_id, transmit_point.pos)
                if nil ~= dummyPoint then
                    if func(dummyPoint.pos, arg3) then
                        if func(dummyPoint.rot, arg4) then
                            return transmit_point
                        end
                    end
                end
            end
        end
    end

    return nil
end

function QuestActorProxy:GetTransmitCfgById(arg1, point_id)
    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    local v
    if nil ~= questData then
        if nil ~= questData.transmit_points then
            goto lbl_13
        end
    end

    v = nil
    do
        return v
    end

    ::lbl_13::
    for k, transmit_point in pairs(questData.transmit_points) do
        if transmit_point.point_id == point_id then
            return transmit_point
        end
    end

    return nil
end

function QuestActorProxy:GetTransmitCfgByQuestId(arg1, point_id)
    local questData = self.shareData:GetQuestData(arg1)
    local v
    if nil ~= questData then
        if nil ~= questData.transmit_points then
            goto lbl_12
        end
    end

    v = nil
    do
        return v
    end

    ::lbl_12::
    for k, transmit_point in pairs(questData.transmit_points) do
        if transmit_point.point_id == point_id then
            return transmit_point
        end
    end

    return nil
end

function QuestActorProxy:GetTransmitCfgByDummyPoint(arg1, scene_id, pos)
    local questConfigId = arg1.QuestConfigId
    local questData = self.shareData:GetQuestData(questConfigId)
    local v
    if nil ~= questData then
        if nil ~= questData.transmit_points then
            goto lbl_13
        end
    end

    v = nil
    do
        return v
    end

    ::lbl_13::
    for k, transmit_point in pairs(questData.transmit_points) do
        if transmit_point.scene_id == scene_id then
            if transmit_point.pos == pos then
                return transmit_point
            end
        end
    end

    return nil
end

function QuestActorProxy:TryStartTribalAutoTrack(arg1)
    if nil == arg1 then
        return false
    end

    return actorUtils.TryStartTribalAutoTrack(arg1.QuestConfigId)
end

function QuestActorProxy:TryShowQuestReview(arg1)
    return actorUtils.SimpleUIShowForLua(false, "QuestReviewTipsDialog", arg1)
end

function QuestActorProxy:DisableMainPageWithConfigByQuest(arg1, arg2)
    if arg1 == nil then
        arg1 = true
    end

    actorUtils.DisableMainPageWithConfigByQuest(self.mainQuestID, arg1, arg2)
end

function QuestActorProxy:DisableMainPageByQuest(arg1, arg2)
    if arg1 == nil then
        arg1 = true
    end

    actorUtils.DisableMainPageByQuest(self.mainQuestID, arg1, arg2)
end

function QuestActorProxy:EnablePlayerInputByQuest(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    actorUtils.EnablePlayerInputByQuest(self.mainQuestID, arg1, arg2)
end

function QuestActorProxy:DelaySpawnGadget(arg1, arg2, arg3, arg4)
    local questConfigId = arg1.QuestConfigId
    if arg4 == nil or arg4 <= 0 then
        self:SpawnGadgetById(questConfigId, arg2, arg3)
        return
    end

    self:CallDelay(arg4, self.SpawnGadgetById, questConfigId, arg2, arg3)
end

function QuestActorProxy:DelaySpawnGadget_MaleCond(arg1, arg2, arg3, arg4, arg5, arg6)
    local selectByPlayerIsMale = self:SelectByPlayerIsMale(arg2, arg3)
    local v = self:SelectByPlayerIsMale(arg4, arg5)
    return self:DelaySpawnGadget(arg1, selectByPlayerIsMale, v, arg6)
end

function QuestActorProxy:SafeDestroyQuestNpc(arg1, arg2)
    local questToken = self.GetQuestToken(self)
    print(">> SafeDestroyQuestNpc " .. tostring(arg1) .. " questToken " .. tostring(questToken))
    self.ActionSafeCall(self, function()
        print(">> NowReal SafeDestroyQuestNpc " .. tostring(arg1) .. " questToken " .. tostring(questToken) .. "  nowToken " .. tostring(self:GetQuestToken()))
        local realAlias = self:GetRealAlias(arg1)
        actorMgr:DestroyEntityActor(realAlias, arg2, nil, questToken)
    end)
end

function QuestActorProxy:SafeDestroyQuestNpc_MaleCond(arg1, arg2, arg3)
    local selectByPlayerIsMale = self:SelectByPlayerIsMale(arg1, arg2)
    return self:SafeDestroyQuestNpc(selectByPlayerIsMale, arg3)
end

function QuestActorProxy:GetNextTaskUniqId()
    return actorUtils.GenNextTaskUniqId()
end

function QuestActorProxy:PushTaskCache(arg1, arg2)
    if self.curRunningTask == nil then
        return false
    end

    local v = self.curRunningTask[arg2]
    if v == nil then
        return false
    end

    actorUtils.CacheQuestTask(arg1.alias, self.mainQuestID, arg2, v.cmdType)
    return true
end

function QuestActorProxy:GetTaskCache(arg1)
    if self.curRunningTask == nil then
        return
    end

    return self.curRunningTask[arg1]
end

function QuestActorProxy:FinishTask(arg1)
    if self.curRunningTask == nil then
        return
    end

    self.curRunningTask[arg1] = nil
end

function QuestActorProxy:FinishTaskByCmdType(cmdType)
    if self.curRunningTask == nil then
        return
    end

    for k, v in pairs(self.curRunningTask) do
        if v.cmdType == cmdType then
            self.curRunningTask[k] = nil
        end
    end
end

function QuestActorProxy:OnStartQuestTask(arg1, arg2)
    if nil == arg1 then
        return false
    end

    if self.curRunningTask == nil then
        return false
    end

    local v = self.curRunningTask[arg2]
    local flag
    if v ~= nil then
        if v.handler ~= nil then
            if v.alias == arg1.alias then
                goto lbl_23
            end
        end
    end

    flag = false
    do
        return flag
    end

    ::lbl_23::
    v.handler(self, arg1, v)
    return true
end

function QuestActorProxy:OnPostEnterScene()
    if self.postEnterSceneHandlers == nil then
        return
    end

    local currSceneID = sceneData.currSceneID
    for k, postEnterSceneHandler in pairs(self.postEnterSceneHandlers) do
        if currSceneID == k or k == 0 then
            for i, v in ipairs(postEnterSceneHandler) do
                if v ~= nil then
                    if v.handler ~= nil then
                        v.handler(self)
                    end
                end
            end
        end
    end

    self.postEnterSceneHandlers = nil
end

function QuestActorProxy:AddPostEnterSceneCall(sceneId, handler)
    if self.postEnterSceneHandlers == nil then
        self.postEnterSceneHandlers = {}
    end

    local tbl = {sceneId = sceneId, handler = handler}
    local postEnterSceneHandler = self.postEnterSceneHandlers[sceneId]
    if postEnterSceneHandler == nil then
        self.postEnterSceneHandlers[sceneId] = {tbl}
    else
        postEnterSceneHandler[#postEnterSceneHandler + 1] = tbl
    end
end

function QuestActorProxy:ReqNpcStartCall(arg1, callback)
    local actorInternal = actorMgr:GetActorInternal(arg1)
    if actorInternal ~= nil then
        if actorInternal ~= actorMgr.dummyActor then
            if callback ~= nil then
                callback(actorInternal)
            end

            return
        end
    end

    actorUtils.DoStartCall(arg1, callback)
end

function QuestActorProxy:NpcRunToTask(arg1, pos, onFinish, onPause, onResume, onDisappear)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_TASK = ActorCommandType.QUEST_MOVE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_TASK,
        alias = arg1.alias,
        pos = pos,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onDisappear = onDisappear,
        handler = self.NpcRunToTaskImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcRunToTaskImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcRunToTaskEasy(arg1, arg2, arg3)
    self:NpcRunToTask(arg1, arg2, arg3, nil, nil, function(arg1)
        arg1:SyncPos(2)
    end)
end

function QuestActorProxy:NpcRunToTaskImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        self:FinishTask(uniqId)
        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1)
        self:PushTaskCache(arg1, uniqId, cmdType)
    end

    if arg1:IsActorStart() then
        arg1:RunToTask(arg2.pos, func, arg2.onPause, arg2.onResume, arg2.onDisappear, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcWalkToTask(arg1, pos, onFinish, onPause, onResume, onDisappear)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_TASK = ActorCommandType.QUEST_MOVE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_TASK,
        alias = arg1.alias,
        pos = pos,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onDisappear = onDisappear,
        handler = self.NpcWalkToTaskImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcWalkToTaskImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcWalkToTaskEasy(arg1, arg2, arg3)
    self:NpcWalkToTask(arg1, arg2, arg3, nil, nil, function(arg1)
        arg1:SyncPos(1)
    end)
end

function QuestActorProxy:NpcWalkToTaskImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        self:FinishTask(uniqId)
        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1)
        self:PushTaskCache(arg1, uniqId, cmdType)
    end

    if arg1:IsActorStart() then
        arg1:WalkToTask(arg2.pos, func, arg2.onPause, arg2.onResume, arg2.onDisappear, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcRunToRouteTask(arg1, points, onFinish, onPause, onResume, onDisappear)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_TASK = ActorCommandType.QUEST_MOVE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_TASK,
        alias = arg1.alias,
        points = points,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onDisappear = onDisappear,
        handler = self.NpcRunToRouteTaskImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcRunToRouteTaskImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcRunToRouteTaskEasy(arg1, arg2, arg3)
    self:NpcRunToRouteTask(arg1, arg2, arg3, nil, nil, function(arg1)
        arg1:SyncPos(2)
    end)
end

function QuestActorProxy:NpcRunToRouteTaskImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        self:FinishTask(uniqId)
        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1, arg2)
        if self:PushTaskCache(arg1, uniqId, cmdType) == true then
            local curWayPointIndex = arg2.curWayPointIndex
            if nil ~= curWayPointIndex and 0 < curWayPointIndex then
                local taskCache = self:GetTaskCache(uniqId)
                if nil ~= taskCache then
                    if nil ~= taskCache.points then
                        local points = {}
                        local n = 1
                        for i = curWayPointIndex + 1, #taskCache.points do
                            points[n] = taskCache.points[i]
                            n = n + 1
                        end

                        taskCache.points = points
                    end
                end
            end
        end
    end

    if arg1:IsActorStart() then
        arg1:RunToRouteTask(arg2.points, func, arg2.onPause, arg2.onResume, arg2.onDisappear, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcWalkToRouteTask(arg1, points, onFinish, onPause, onResume, onDisappear)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_TASK = ActorCommandType.QUEST_MOVE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_TASK,
        alias = arg1.alias,
        points = points,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onDisappear = onDisappear,
        handler = self.NpcWalkToRouteTaskImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcWalkToRouteTaskImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcWalkToRouteTaskEasy(arg1, arg2, arg3)
    self:NpcWalkToRouteTask(arg1, arg2, arg3, nil, nil, function(arg1)
        arg1:SyncPos(1)
    end)
end

function QuestActorProxy:NpcWalkToRouteTaskImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        self:FinishTask(uniqId)
        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1, arg2)
        if self:PushTaskCache(arg1, uniqId, cmdType) == true then
            local curWayPointIndex = arg2.curWayPointIndex
            if nil ~= curWayPointIndex and 0 < curWayPointIndex then
                local taskCache = self:GetTaskCache(uniqId)
                if nil ~= taskCache then
                    if nil ~= taskCache.points then
                        local points = {}
                        local n = 1
                        for i = curWayPointIndex + 1, #taskCache.points do
                            points[n] = taskCache.points[i]
                            n = n + 1
                        end

                        taskCache.points = points
                    end
                end
            end
        end
    end

    if arg1:IsActorStart() then
        arg1:WalkToRouteTask(arg2.points, func, arg2.onPause, arg2.onResume, arg2.onDisappear, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcJumpToTask(arg1, pos, freestyle, onFinish, onPause, onResume, onDisappear)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_TASK = ActorCommandType.QUEST_MOVE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_TASK,
        alias = arg1.alias,
        pos = pos,
        freestyle = freestyle,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onDisappear = onDisappear,
        handler = self.NpcJumpToTaskImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcJumpToTaskImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcJumpToTaskImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        self:FinishTask(uniqId)
        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1)
        self:PushTaskCache(arg1, uniqId, cmdType)
    end

    if arg1:IsActorStart() then
        arg1:JumpToPointTask(arg2.pos, arg2.freestyle, func, arg2.onPause, arg2.onResume, arg2.onDisappear, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcForceAvatarWalkByDist(arg1, lockDist, outDist)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_FORCE_AVATAR_WALK = ActorCommandType.QUEST_FORCE_AVATAR_WALK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_FORCE_AVATAR_WALK,
        alias = arg1.alias,
        lockDist = lockDist,
        outDist = outDist,
        handler = self.NpcForceAvatarWalkByDistImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcForceAvatarWalkByDistImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcForceAvatarWalkByDistImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local function func(arg1)
        self:PushTaskCache(arg1, uniqId, cmdType)
    end

    if arg1:IsActorStart() then
        arg1:ForceAvatarWalkByDist(arg2.lockDist, arg2.outDist, func)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcResetForceAvatarWalk(arg1)
    if nil == arg1 then
        return nil
    end

    self:FinishTaskByCmdType(ActorCommandType.QUEST_FORCE_AVATAR_WALK)
    arg1:ResetForceAvatarWalk()
end

function QuestActorProxy:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1, points, pauseLen, resumeLen, beFollowFailed, onFinish, onPause, onResume, onMovePause, onMoveResume, onMoveFailed, isWalk)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_PAUSE_TASK = ActorCommandType.QUEST_MOVE_PAUSE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_PAUSE_TASK,
        alias = arg1.alias,
        points = points,
        pauseLen = pauseLen,
        resumeLen = resumeLen,
        beFollowFailed = beFollowFailed,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onMovePause = onMovePause,
        onMoveResume = onMoveResume,
        onMoveFailed = onMoveFailed,
        isWalk = isWalk,
        targetFloatingHeight = 0,
        useFloatingMove = false,
        handler = self.NpcBeFollowTaskByRoutePointsWithDiffLenImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcBeFollowTaskByRoutePointsWithDiffLenImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:AdvNpcBeFollowTaskByRoutePointsWithDiffLen(arg1, points, targetFloatingHeight, useFloatingMove, pauseLen, resumeLen, beFollowFailed, onFinish, onPause, onResume, onMovePause, onMoveResume, onMoveFailed, isWalk)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_MOVE_PAUSE_TASK = ActorCommandType.QUEST_MOVE_PAUSE_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_MOVE_PAUSE_TASK,
        alias = arg1.alias,
        points = points,
        pauseLen = pauseLen,
        resumeLen = resumeLen,
        beFollowFailed = beFollowFailed,
        onFinish = onFinish,
        onPause = onPause,
        onResume = onResume,
        onMovePause = onMovePause,
        onMoveResume = onMoveResume,
        onMoveFailed = onMoveFailed,
        isWalk = isWalk,
        targetFloatingHeight = targetFloatingHeight,
        useFloatingMove = useFloatingMove,
        handler = self.NpcBeFollowTaskByRoutePointsWithDiffLenImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcBeFollowTaskByRoutePointsWithDiffLenImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcBeFollowTaskByRoutePointsWithDiffLenImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1)
        if arg1.BeFollowState ~= BeFollowState.FAILED then
            self:FinishTask(uniqId)
        end

        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1, arg2)
        if self:PushTaskCache(arg1, uniqId, cmdType) == true then
            local curWayPointIndex = arg2.curWayPointIndex
            if nil ~= curWayPointIndex and 0 < curWayPointIndex then
                local taskCache = self:GetTaskCache(uniqId)
                if nil ~= taskCache then
                    if nil ~= taskCache.points then
                        local points = {}
                        local n = 1
                        for i = curWayPointIndex + 1, #taskCache.points do
                            points[n] = taskCache.points[i]
                            n = n + 1
                        end

                        taskCache.points = points
                    end
                end
            end
        end
    end

    if arg1:IsActorStart() then
        arg1:AdvBeFollowTaskByRoutePointsWithDiffLen(arg2.points, arg2.targetFloatingHeight, arg2.useFloatingMove, arg2.pauseLen, arg2.resumeLen, arg2.beFollowFailed, func, arg2.onPause, arg2.onResume, arg2.onMovePause, arg2.onMoveResume, arg2.onMoveFailed, arg2.isWalk, v)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:NpcNarratorOnlyTaskByData(arg1, data, onFinish, arg4)
    if nil == arg1 then
        return nil
    end

    local nextTaskUniqId = self:GetNextTaskUniqId()
    local qUEST_NARRATOR_TASK = ActorCommandType.QUEST_NARRATOR_TASK
    if self.curRunningTask == nil then
        self.curRunningTask = {}
    end

    local tbl = {
        uniqId = nextTaskUniqId,
        cmdType = qUEST_NARRATOR_TASK,
        alias = arg1.alias,
        data = data,
        onFinish = onFinish,
        mainQuestId = arg4,
        handler = self.NpcNarratorOnlyTaskByDataImpl
    }

    self.curRunningTask[nextTaskUniqId] = tbl
    self:NpcNarratorOnlyTaskByDataImpl(arg1, tbl)
    return nextTaskUniqId
end

function QuestActorProxy:NpcNarratorOnlyTaskByDataImpl(arg1, arg2)
    if nil == arg2 then
        return
    end

    local uniqId = arg2.uniqId
    local cmdType = arg2.cmdType
    local onFinish = arg2.onFinish
    local function func(arg1, arg2)
        if arg2 ~= nil then
            if arg2.isFinished then
                self:FinishTask(uniqId)
            end
        end

        if nil ~= onFinish then
            onFinish(arg1)
        end
    end

    local function v(arg1, arg2)
        if self:PushTaskCache(arg1, uniqId, cmdType) == true then
            local dialogIndex = arg2.dialogIndex
            if nil ~= dialogIndex then
                local taskCache = self:GetTaskCache(uniqId)
                if nil ~= taskCache then
                    if 1 < dialogIndex then
                        if arg2 ~= nil then
                            if arg2.hasSayDialog then
                                taskCache.dialogIndex = dialogIndex - 1
                            end
                        else
                            taskCache.dialogIndex = dialogIndex
                        end
                    else
                        taskCache.dialogIndex = 0
                    end
                end
            end
        end
    end

    if arg1:IsActorStart() then
        arg1:NarratorOnlyTaskByData(arg2.data, func, arg2.mainQuestId, v, arg2.dialogIndex)
    else
        self.PushTaskCache(self, arg1, uniqId, cmdType)
    end
end

function QuestActorProxy:QuestLimitRegionTask(arg1, sceneId, roomSceneIds, centerPos, avatarOffset, tickInterval, sphereWarningRadius, sphereLimitedRadius, initBlackScreenAlpha, warningBannerTextMapId, limitTextMapId, arg12, arg13, arg14, arg15)
    self:ClearQuestLimitRegionTask()
    if arg12 == nil then
        arg12 = "QuestLimitRegion"
    end

    local task = self:CreateTask(TaskID.QUEST_LIMIT_REGION_ID, LuaTaskType.QUEST_LIMIT_REGION, arg12)
    if sceneId == nil then
        sceneId = sceneData.DefaultSceneID
    elseif sceneId == 0 then
        if sceneData.currSceneID ~= -1 then
            sceneId = sceneData.currSceneID
        end
    end

    if tickInterval == nil then
        tickInterval = 0.5
    end

    if initBlackScreenAlpha == nil then
        initBlackScreenAlpha = 0.5
    end

    task:InitData(arg1, {
        avatarOffset = avatarOffset,
        tickInterval = tickInterval,
        initBlackScreenAlpha = initBlackScreenAlpha,
        warningType = 0,
        warningBannerTextMapId = warningBannerTextMapId,
        limitTextMapId = limitTextMapId,
        sceneId = sceneId,
        roomSceneIds = roomSceneIds,
        regionType = 0,
        centerPos = centerPos,
        sphereWarningRadius = sphereWarningRadius,
        sphereLimitedRadius = sphereLimitedRadius
    })

    task:RegisterCallback(arg13, arg14, arg15)
    task:StartCheck()
end

function QuestActorProxy:QuestLimitRegionTaskByData(arg1, arg2, arg3, arg4, arg5)
    if arg2 == nil then
        return
    end

    self:ClearQuestLimitRegionTask()
    local task = self:CreateTask(TaskID.QUEST_LIMIT_REGION_ID, LuaTaskType.QUEST_LIMIT_REGION, "QuestLimitRegion")
    task:InitData(arg1, arg2)
    task:RegisterCallback(arg3, arg4, arg5)
    task:StartCheck()
end

function QuestActorProxy:ClearQuestLimitRegionTask()
    self:ClearTask(TaskID.QUEST_LIMIT_REGION_ID)
end

function QuestActorProxy:StartTalkPrepareInter(arg1, arg2, arg3, arg4, arg5)
    self.uActor:StartTalkPrepareInter(arg1, arg2, arg3, arg4, arg5)
end

function QuestActorProxy:PlayerEnterDungeonPointWithDialogs(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    globalActor:PlayerEnterDungeonPointWithDialogs(arg1, arg2, arg3, arg4, arg5, arg6, self, arg7, arg8, arg9)
end

function QuestActorProxy:PlayerEnterDungeonWithData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    globalActor:PlayerEnterDungeonWithData(arg1, arg2, arg3, arg4, arg5, self, arg6, arg7)
end

function QuestActorProxy:PlayerEnterDungeonByData(arg1, arg2, arg3, arg4)
    globalActor:PlayerEnterDungeonByData(arg1, arg2, self, arg3, arg4)
end

function QuestActorProxy:NotifyTo(arg1, arg2, arg3, ...)
    self:NotifyToWithSource(arg1, arg2, arg3, ActorEventSource.QUEST, self.mainQuestID, ...)
end

function QuestActorProxy:LightNotifyTo(arg1, arg2, arg3, ...)
    self:LightNotifyToWithSource(arg1, arg2, arg3, ActorEventSource.QUEST, self.mainQuestID, ...)
end

function QuestActorProxy:NotifyToNpcById(arg1, arg2, arg3, arg4, ...)
    if arg4 == nil then
        arg4 = false
    end

    actorUtils.FireEventToNpcById(ActorEvtTargetType.SINGLE, arg1, arg2, arg3, (...), arg4, ActorEventSource.QUEST, self.mainQuestID)
end

function QuestActorProxy:CallOnElemViewOpenInSpecificArea(arg1, arg2, arg3, arg4, arg5)
    local str = tostring(string.format("Q%s_%u", arg1, tostring(self.mainQuestID)))
    if arg4 == nil then
        arg4 = 5
    end

    actorUtils.CallOnElemViewOpenInSpecificArea(str, arg2, arg3, arg4, arg5)
end

function QuestActorProxy:UnCallOnElemViewOpenInSpecificArea(arg1)
    local str = tostring(string.format("Q%s_%u", arg1, tostring(self.mainQuestID)))
    actorUtils.UnCallOnElemViewOpenInSpecificArea(str)
end

function QuestActorProxy:QuestNarratorTask(arg1, arg2)
    if arg1 == nil then
        return
    end

    if arg1.data ~= nil then
        if 0 < arg1.priority then
            if actorUtils.IsCanPlayNarratorWithPriority(arg1.priority) == false then
                print("narrator cannot play : not allowed to play.")
                return
            end
        end
    end

    self:ClearNarratorTask()
    if arg1 ~= nil then
        if arg1.hasAudio == nil then
            arg1.hasAudio = false
        end
    end

    local resumeReminder = arg1.resumeReminder
    if resumeReminder == nil then
        resumeReminder = -1
    end

    if 0 <= resumeReminder then
        self:OverrideNarratorResumeReminder(resumeReminder)
    else
        self:OverrideNarratorResumeReminder(-1)
    end

    local questNarratorTask = self.uActor:QuestNarratorTask(self.mainQuestID, arg1, arg2)
    if nil ~= questNarratorTask and 0 <= resumeReminder then
        questNarratorTask:FinishEvent("+", self.RecoverNarratorResumeReminder)
        questNarratorTask:DestroyEvent("+", self.RecoverNarratorResumeReminder)
    end
end

function QuestActorProxy:CreateGlobalObject(arg1, arg2, arg3, arg4)
    self.uActor:CreateGlobalObject(arg1, arg2, arg3, arg4)
end

function QuestActorProxy:DestroyGlobalObject(arg1)
    self.uActor:DestroyGlobalObject(arg1)
end

function QuestActorProxy:DestroyAllGlobalObjects()
    self.uActor:DestroyAllGlobalObjects()
end

function QuestActorProxy:SetGlobalObjectState(arg1, arg2)
    self.uActor:SetGlobalObjectState(arg1, arg2)
end

function QuestActorProxy:CreateLocalGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    if NG_HSOD_DEBUG then
        print(string.format("CreateLocalGadget %u %s %s", arg1, tostring(arg2), localGadgetRelSubKey))
    end

    if arg9 == nil then
        arg9 = -1
    end

    if arg10 == nil then
        arg10 = false
    end

    if arg11 == nil then
        arg11 = {}
    end

    self.uActor:CreateLocalGadget(arg1, localGadgetRelSubKey, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
end

function QuestActorProxy:CreateAvatarAttachLocalGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg3)
    if NG_HSOD_DEBUG then
        print(string.format("CreateAvatarAttachLocalGadget %u %s %s", arg2, tostring(arg3), localGadgetRelSubKey))
    end

    if arg10 == nil then
        arg10 = -1
    end

    self.uActor:CreateAvatarAttachLocalGadget(arg1, arg2, localGadgetRelSubKey, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function QuestActorProxy:CreateHeroAvatarAttachLocalGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg3)
    if NG_HSOD_DEBUG then
        print(string.format("CreateHeroAvatarAttachLocalGadget %u %s %s", arg2, tostring(arg3), localGadgetRelSubKey))
    end

    if arg10 == nil then
        arg10 = -1
    end

    self.uActor:CreateHeroAvatarAttachLocalGadget(arg1, arg2, localGadgetRelSubKey, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function QuestActorProxy:CreateNpcAttachLocalGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg4)
    if NG_HSOD_DEBUG then
        print(string.format("CreateNpcAttachLocalGadget %u %s %s", arg3, tostring(arg4), localGadgetRelSubKey))
    end

    if arg11 == nil then
        arg11 = -1
    end

    self.uActor:CreateNpcAttachLocalGadget(arg1, arg2, arg3, localGadgetRelSubKey, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
end

function QuestActorProxy:RemoveNpcAttachLocalGadget(arg1, arg2, arg3, arg4)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg4)
    if NG_HSOD_DEBUG then
        print(string.format("RemoveNpcAttachLocalGadget %u %s %s", arg3, tostring(arg4), localGadgetRelSubKey))
    end

    self.uActor:RemoveNpcAttachLocalGadget(arg1, arg2, arg3, localGadgetRelSubKey)
end

function QuestActorProxy:RemoveLocalGadget(arg1, arg2)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    if NG_HSOD_DEBUG then
        print(string.format("RemoveLocalGadget %u %s %s", arg1, tostring(arg2), localGadgetRelSubKey))
    end

    self.uActor:RemoveLocalGadget(arg1, localGadgetRelSubKey)
end

function QuestActorProxy:SetLocalGadgetValue(arg1, arg2, arg3, arg4)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    if NG_HSOD_DEBUG then
        print(string.format("SetLocalGadgetValue %u %s %s", arg1, tostring(arg2), localGadgetRelSubKey))
    end

    self.uActor:SetLocalGadgetValue(arg1, localGadgetRelSubKey, arg3, arg4)
end

function QuestActorProxy:GetLocalGadgetValue(arg1, arg2, arg3)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    if NG_HSOD_DEBUG then
        print(string.format("GetLocalGadgetValue %u %s %s", arg1, tostring(arg2), localGadgetRelSubKey))
    end

    return self.uActor:GetLocalGadgetValue(arg1, localGadgetRelSubKey, arg3)
end

function QuestActorProxy:SetLocalGadgetAction(arg1, arg2, arg3)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    if NG_HSOD_DEBUG then
        print(string.format("SetLocalGadgetAction %u %s %s", arg1, tostring(arg2), localGadgetRelSubKey))
    end

    if arg3 == nil then
        return
    end

    if #arg3 == 1 then
        local v = arg3[1]
        self.uActor:AddLocalGadgetMoveData(arg1, localGadgetRelSubKey, v.time, v.targetPos, v.blendType)
    else
        local get = CS.MoleMole.LocalGadgetMoveDataList.Get()
        for i = 1, #arg3 do
            local v = arg3[i]
            local moveData = CS.MoleMole.LocalGadgetMoveData.Get()
            moveData.time = v.time
            moveData.targetPos = v.targetPos
            moveData.blendType = v.blendType
            get:AddMoveData(moveData)
        end

        self.uActor:AddLocalGadgetMoveDataList(arg1, localGadgetRelSubKey, get)
    end
end

function QuestActorProxy:AddLocalGadgetGVWatcher(arg1, arg2, arg3, arg4, arg5)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    local addLocalGadgetGVWatcher = self.uActor:AddLocalGadgetGVWatcher(arg1, localGadgetRelSubKey, arg3, arg4, arg5)
    if NG_HSOD_DEBUG then
        print(string.format("AddLocalGadgetGVWatcher %u %s %s token=%u", arg1, tostring(arg2), localGadgetRelSubKey, addLocalGadgetGVWatcher))
    end

    return addLocalGadgetGVWatcher
end

function QuestActorProxy:ClearLocalGadgetGVWatcher(arg1, arg2)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    self.uActor:ClearLocalGadgetGVWatcher(arg1, localGadgetRelSubKey)
end

function QuestActorProxy:RemoveLocalGadgetGVWatcher(arg1, arg2, arg3)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    self.uActor:RemoveLocalGadgetGVWatcher(arg1, localGadgetRelSubKey, arg3)
end

function QuestActorProxy:SetLocalGadgetState(arg1, arg2, arg3)
    local localGadgetRelSubKey = self:GetLocalGadgetRelSubKey(arg2)
    self.uActor:SetLocalGadgetState(arg1, localGadgetRelSubKey, arg3)
end

function QuestActorProxy:GetLocalGadgetRelSubKey(arg1)
    local seriesID = self:GetSeriesID()
    if seriesID ~= nil and 0 < seriesID then
        return tostring(string.format("S%u_%s", seriesID, tostring(arg1)))
    end

    return tostring(string.format("Q%u_%s", self.mainQuestID, tostring(arg1)))
end

function QuestActorProxy:DestroyAllQuestLocalGadget()
    self.uActor:RemoveAllLocalGadget()
end

function QuestActorProxy:SetWeather(weather)
    self.uActor:SetWeather(weather)
end

function QuestActorProxy:CancelWeather()
    self.uActor:CancelWeather()
end

function QuestActorProxy:BanCrowdNpc(arg1, arg2, arg3, arg4, arg5)
    actorUtils.Log(string.format("[Lua] %u call BanCrowdNpc. blockId: %u groupId: %u isBan: %s isReleseSit: %s", self.mainQuestID, arg1, arg2, tostring(arg4), tostring(arg5)))
    if arg4 == true then
        self.uActor:BanCrowd(self.mainQuestID, arg1, arg2, arg3, true, arg5)
    else
        self.uActor:BanCrowd(self.mainQuestID, arg1, arg2, arg3, false, true)
    end
end

function QuestActorProxy:SetSceneLightState(arg1, arg2, arg3, arg4)
    local sceneLightRelKey = self:GetSceneLightRelKey(arg1)
    self.uActor:SetSceneLightState(sceneLightRelKey, arg1, arg2, arg3, arg4)
end

function QuestActorProxy:ResetSceneLightState(arg1)
    local sceneLightRelKey = self:GetSceneLightRelKey(arg1)
    self.uActor:ResetSceneLightState(sceneLightRelKey, arg1)
end

function QuestActorProxy:GetSceneLightRelKey(arg1)
    local seriesID = self:GetSeriesID()
    if seriesID ~= nil and 0 < seriesID then
        return tostring(string.format("S%u_%s", seriesID, tostring(arg1)))
    end

    return tostring(string.format("Q%u_%s", self.mainQuestID, tostring(arg1)))
end

function QuestActorProxy:DeployStoryByQuest(arg1)
    local str = tostring(string.format("Q%u", self.mainQuestID))
    self.uActor:DeployStory(arg1, str)
end

function QuestActorProxy:CancelStoryByQuest(arg1)
    local str = tostring(string.format("Q%u", self.mainQuestID))
    self.uActor:CancelStory(arg1, str)
end

function QuestActorProxy:DeployRangeStoryByQuest(arg1, arg2, arg3, arg4, arg5)
    local str = tostring(string.format("Q%u", self.mainQuestID))
    self.uActor:DeployRangeStory(arg1, str, arg2, arg3, arg4, arg5)
end

function QuestActorProxy:CancelRangeStoryByQuest(arg1)
    local str = tostring(string.format("Q%u", self.mainQuestID))
    self.uActor:CancelRangeStory(arg1, str)
end

function QuestActorProxy:CancelAllStory()
    self.uActor:CancelAllStory()
end

function QuestActorProxy:CallDelayByQuest(arg1, arg2, arg3, ...)
    if nil == arg1 then
        CS.MoleMole.SuperDebug.LogError("subKey is nil")
        return
    end

    local str = tostring(string.format("Q%u_%s", self.mainQuestID, tostring(arg1)))
    self:CallDelayWithKey(str, arg2, arg3, ...)
end

function QuestActorProxy:UnCallDelayByQuest(arg1)
    if nil == arg1 then
        CS.MoleMole.SuperDebug.LogError("subKey is nil")
        return
    end

    local str = tostring(string.format("Q%u_%s", self.mainQuestID, tostring(arg1)))
    self:UnCallDelayWithKey(str)
end

function QuestActorProxy:BindQuestNpcToPlatform(arg1, arg2, arg3)
    if nil == arg3 then
        CS.MoleMole.SuperDebug.LogError("platformInfo is nil")
        return
    end

    actorUtils.BindQuestNpcToPlatform(arg1, arg2, arg3)
end

function QuestActorProxy:UnbindQuestNpcFromPlatform(arg1, arg2, arg3, arg4, arg5)
    if nil == arg5 then
        arg5 = false
    end

    actorUtils.UnbindQuestNpcFromPlatform(arg1, arg2, arg3, arg4, arg5)
end

function QuestActorProxy:NatsaurusVehicleOff()
    actorUtils.TryVehicleOffDisableEff(30010)
end

function QuestActorProxy:SwitchPhantom(arg1, arg2)
    actorMgr:GetActor(arg1):SwitchPhantom(arg2, 1, self.mainQuestID)
end

function QuestActorProxy:AddLongDistanceMoveNpcHideSphere(arg1, arg2, arg3, arg4)
    self.uActor:AddLongDistanceMoveNpcHideRegion(arg1, arg2, arg3, arg4)
end

function QuestActorProxy:AddLongDistanceMoveNpcHideSimplePolygon(arg1, arg2, arg3, arg4, arg5)
    self.uActor:AddLongDistanceMoveNpcHideRegion(arg1, arg2, center, radius)
end

function QuestActorProxy:RemoveLongDistanceMoveNpcHideRegion(arg1)
    self.uActor:RemoveLongDistanceMoveNpcHideRegion(arg1)
end

function QuestActorProxy:AddIceCreatureHideSphereRegion(arg1, arg2, arg3, arg4)
    self.uActor:AddIceCreatureHideSphereRegion(arg1, arg2, arg3, arg4, true)
end

function QuestActorProxy:AddIceCreatureHideCubeRegion(arg1, arg2, arg3, arg4, arg5)
    self.uActor:AddIceCreatureHideCubeRegion(arg1, arg2, arg3, arg4, arg5, true)
end

function QuestActorProxy:AddIceCreatureHidePolygonRegion(arg1, arg2, arg3)
    self.uActor:AddIceCreatureHidePolygonRegion(arg1, arg2, arg3, true)
end

function QuestActorProxy:RemoveAllIceCreatureHideRegion(arg1)
    self.uActor:RemoveAllIceCreatureHideRegion(arg1)
end

return QuestActorProxy
