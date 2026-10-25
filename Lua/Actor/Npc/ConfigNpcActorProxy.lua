require("Actor/ActorCommon")
local NpcConfigCommon = require("Actor/Npc/Config/NpcConfigCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local ConfigNpc = class("ConfigNpc", NpcActorProxy)
local reactDataType = NpcConfigCommon.ReactDataType
ConfigNpc.ConfigPath = nil
ConfigNpc.IsPreparingData = false
ConfigNpc.IsDataInited = false

function ConfigNpc:PrepareNpcDataAndStart()
    if self.IsPreparingData == true then
        return
    end

    self.ID = self:GetNpcConfigId()
    self.ConfigPath = "Actor/Npc/Config/NpcConfig/Config" .. tostring(self.ID)
    self.IsPreparingData = true
    actorUtils.PrepareData(self.OnPrepareNpcData, self, self.ConfigPath)
end

function ConfigNpc:OnPrepareNpcData()
    self.IsPreparingData = false
    if self.uActor == nil then
        return
    end

    self:DataInit()
    self:InitBaseConfig()
    self:OnInitBaseConfig()
    self.IsDataInited = true
    self.uActor:OnDataInited()
    self:OnPostStart()
end

function ConfigNpc:DataInit()
    self.ID = self:GetNpcConfigId()
    if NG_HSOD_DEBUG then
        if UNITY_EDITOR then
            util.unrequire(self.ConfigPath)
        end
    end

    local v = require(self.ConfigPath)
    if v ~= false and v ~= true then
        self.ConfigData = v.Data
    end

    self.ConfigPath = nil
end

function ConfigNpc:Start()
    self:OnPreStart()
    if self.IsDataInited == true then
        self:OnPostStart()
    else
        self:PrepareNpcDataAndStart()
    end
end

function ConfigNpc:OnPreStart() end
function ConfigNpc:OnPostStart() end

function ConfigNpc:InitBaseConfig()
    if nil == self.uActor then
        return
    end

    if nil == self.ConfigData then
        return
    end

    util.begin_sample("[NpcFSMBehaviour]TitleData")
    if nil ~= self.ConfigData.TitleData then
        if nil ~= self.ConfigData.TitleData.titleDatas then
            self.uActor:BeginAddTitleConfig(#self.ConfigData.TitleData.titleDatas)
            for i, titleData in ipairs(self.ConfigData.TitleData.titleDatas) do
                local get = CS.MoleMole.TitleData.Get()
                get.titleStr = titleData.titleStr
                get.priority = titleData.priority
                if nil ~= titleData.condList then
                    for j, cond in ipairs(titleData.condList) do
                        local condList = CS.MoleMole.TitleConditionList.Get()
                        condList.priority = cond.priority
                        condList.isShow = cond.isShow
                        if nil ~= cond.condition then
                            condList.condition = NpcUtil.GetConditionData(cond.condition)
                        end

                        if nil ~= cond.conditionGrp then
                            condList:SetConditionGroup(cond.conditionGrp)
                        end

                        get:AddCondList(condList)
                    end
                end

                self.uActor:AddTitleConfig(get)
            end

            self.uActor:EndAddTitleConfig()
        end
    end

    util.end_sample()
    if nil ~= self.ConfigData.TitleDataNew then
        if nil ~= self.ConfigData.TitleDataNew.titleDatas then
            self.uActor:InitTitleDatas(self.ConfigData.TitleDataNew.titleDatas)
        end
    end

    if nil ~= self.ConfigData.ExplicitNameData then
        if nil ~= self.ConfigData.ExplicitNameData.nameDatas then
            self.uActor:InitExplicitNameDatas(self.ConfigData.ExplicitNameData.nameDatas)
        end
    end

    if nil ~= self.ConfigData.BillboardMarkData then
        if nil ~= self.ConfigData.BillboardMarkData.markDatas then
            self.uActor:InitBillboardMarkData(self.ConfigData.BillboardMarkData.markDatas)
        end
    end

    if nil ~= self.ConfigData.NahidaNarratorData then
        self.uActor:InitNahidaNarratorData(self.ConfigData.NahidaNarratorData)
    end

    if nil ~= self.ConfigData.ElementTypeData then
        self.uActor:InitElementTypeData(self.ConfigData.ElementTypeData)
    end

    if nil ~= self.ConfigData.InteeData then
        self.uActor:SetDefaultInteeIcon(self.ConfigData.InteeData.defaultInteeIcon)
        if nil ~= self.ConfigData.InteeData.inteeDatas then
            for i, inteeData in ipairs(self.ConfigData.InteeData.inteeDatas) do
                local get = CS.MoleMole.NpcInteeData.Get()
                get:SetIcon(inteeData.icon)
                get:SetConditionGroup(inteeData.conditions)
                get:SetPriority(inteeData.priority)
                get:SetValidQuestIds(inteeData.validQuestIds)
                self.uActor:AddInteeData(get)
            end
        end

        self.uActor:EndAddInteeData()
    end

    util.begin_sample("[ConfigNpcActor]ReactionData")
    if nil ~= self.ConfigData.ReactionData then
        if nil ~= self.ConfigData.ReactionData.reactionDatas then
            self.uActor:BeginAddReactionData(#self.ConfigData.ReactionData.reactionDatas)
            for i, reactionData in ipairs(self.ConfigData.ReactionData.reactionDatas) do
                local get
                if reactionData._type_ ~= nil then
                    if reactionData._type_ ~= reactDataType.SimpleSerial then
                        goto lbl_260
                    end
                end

                get = CS.MoleMole.NpcSimpleSerialActionReactionData.Get()
                if nil ~= reactionData.reactionActions then
                    for j, reactionAction in ipairs(reactionData.reactionActions) do
                        if reactionAction._type_ == nil then
                            reactionAction._type_ = LuaVirtualType.NpcPlayFreestyleReactionAction
                        end

                        get:AddReactionAction(reactionAction)
                    end

                    goto lbl_317
                    ::lbl_260::
                    if reactionData._type_ == reactDataType.SimpleParallel then
                        get = CS.MoleMole.NpcSimpleParallelActionReactionData.Get()
                        if nil ~= reactionData.reactionActions then
                            for key, reactionAction in pairs(reactionData.reactionActions) do
                                for j, v in ipairs(reactionAction) do
                                    if v._type_ == nil then
                                        v._type_ = LuaVirtualType.NpcPlayFreestyleReactionAction
                                    end

                                    get:AddReactionAction(key, v)
                                end
                            end
                        end
                    else
                        if reactionData._type_ == reactDataType.StoryAction then
                            get = CS.MoleMole.NpcStoryActionReactionData.Get()
                            if reactionData.storyId ~= nil then
                                get.storyId = reactionData.storyId
                            end

                            if reactionData.data ~= nil then
                                get:SetData(reactionData.data)
                            end
                        end
                    end
                end

                ::lbl_317::
                if reactionData ~= nil then
                    if reactionData.reactionId ~= nil then
                        get:SetReactionId(reactionData.reactionId)
                    end

                    if reactionData.bornPosId ~= nil then
                        get:SetBornPosId(reactionData.bornPosId)
                    end

                    if reactionData.preConditions ~= nil then
                        get:SetPreConditionGroup(reactionData.preConditions)
                    end

                    if reactionData.runningConditions ~= nil then
                        get:SetRunningConditionGroup(reactionData.runningConditions)
                    end

                    if reactionData.triggerCD ~= nil then
                        get:SetTriggerCD(reactionData.triggerCD)
                    end

                    if reactionData.priority ~= nil then
                        get:SetPriority(reactionData.priority)
                    end

                    if reactionData.reactionEvent ~= nil then
                        local v = CS.MoleMole.NpcReactionEvent.Get()
                        v:SetEventType(reactionData.reactionEvent.eventType)
                        if reactionData.reactionEvent.eventUIntParams ~= nil then
                            for j, eventUIntParam in ipairs(reactionData.reactionEvent.eventUIntParams) do
                                v:AddUIntParam(eventUIntParam)
                            end
                        end

                        get:SetReactionEvent(reactionData.reactionEvent)
                    end

                    if reactionData.beforeActions ~= nil then
                        for j, beforeAction in ipairs(reactionData.beforeActions) do
                            get:AddBeforeAction(beforeAction)
                        end
                    end

                    if reactionData.afterActions ~= nil then
                        for j, afterAction in ipairs(reactionData.afterActions) do
                            get:AddAfterAction(afterAction)
                        end
                    end
                end

                self.uActor:AddReactionData(get)
            end

            self.uActor:EndAddReactionData()
        end
    end

    if nil ~= self.ConfigData.ScanClueData then
        self.uActor:BeginAddScanClueData(#self.ConfigData.ScanClueData)
        for i, v in ipairs(self.ConfigData.ScanClueData) do
            local get = CS.MoleMole.ScanClueData.Get()
            get:SetDisable(v.disable)
            get:SetConditionGroup(v.conditions)
            get:SetPriority(v.priority)
            get:SetValidQuestIds(v.validQuestIds)
            get:SetDialogList(v.dialogDataList)
            get:SetClueId(v.clueId)
            get:SetDuration(v.duration)
            if v.reminderDataList ~= nil then
                for j, reminderData in ipairs(v.reminderDataList) do
                    get:AddReminderData(reminderData.avatarId, reminderData.reminderId)
                end
            end

            self.uActor:AddScanClueData(get)
        end

        self.uActor:EndAddScanClueData()
    end

    util.end_sample()
end

function ConfigNpc:OnInitBaseConfig() end

function ConfigNpc:TryCreateDailySpeechBubbleTask()
    if self.speechBubbleTask ~= nil then
        return
    end

    if self.bubbleData2 ~= nil then
        self:CreateSpeechBubbleTaskWithData2(self.ID, self.bubbleData2)
    else
        if self.bubbleData ~= nil then
            self:CreateSpeechBubbleTaskWithData(self.ID, self.bubbleData)
        end
    end
end

function ConfigNpc:CreateSpeechBubbleTaskWithData2(arg1, arg2)
    if arg2 == nil then
        print("npc bubble data is nil " .. tostring(self.ID))
        return
    end

    self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
    if self.speechBubbleTask ~= nil then
        for i = 1, #arg2 do
            if arg2[i] ~= nil then
                local get = CS.MoleMole.DailyBubbleData.Get()
                if arg2[i].condition ~= nil then
                    get.condition = NpcUtil.GetConditionData(arg2[i].condition)
                    if arg2[i].condition.priority ~= nil then
                        get.priority = arg2[i].condition.priority
                    end
                end

                if arg2[i].conditionGrp ~= nil then
                    get:SetConditionGroup(arg2[i].conditionGrp)
                end

                if arg2[i].bubbleDatas ~= nil then
                    for j, bubbleData in ipairs(arg2[i].bubbleDatas) do
                        local v = CS.MoleMole.BubbleData.Get()
                        v.dialogId = bubbleData.dialogId
                        v.duration = bubbleData.duration
                        v.intervalMin = bubbleData.intervalMin
                        v.intervalMax = bubbleData.intervalMax
                        get:AddBubbleData(v)
                    end
                end

                if arg2[i].hideSpeechBubble ~= nil then
                    get.hideSpeechBubble = arg2[i].hideSpeechBubble
                else
                    get.hideSpeechBubble = false
                end

                self.speechBubbleTask:AddDailyBubbleData(get)
            end
        end

        self.speechBubbleTask:StartDailyBubble()
    end
end

function ConfigNpc:CreateSpeechBubbleTaskWithData(arg1, arg2)
    if arg2 == nil then
        print("npc bubble data is nil " .. tostring(self.ID))
        return
    end

    self.speechBubbleTask = self:CreateTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.SPEECH_BUBBLE, "Speech")
    if self.speechBubbleTask ~= nil then
        local dialogData = arg2.DialogData
        local v = arg2.BubbleInterval[1]
        local v2 = arg2.BubbleInterval[2]
        if dialogData ~= nil then
            for i = 1, #dialogData do
                if dialogData[i].BubbleInterval ~= nil then
                    v = dialogData[i].BubbleInterval[1]
                    v2 = dialogData[i].BubbleInterval[2]
                end

                self.speechBubbleTask:CreateNpcSpeechBubble(arg1, 0, dialogData[i].Id, dialogData[i].BubbleTime, v, v2, false)
            end
        end
    end
end

function ConfigNpc:isArray(arg1)
    if arg1 == {} then
        return true, 0
    end

    if type(k) ~= "table" then
        return false, 0
    end

    local n = 0
    for key, v in pairs(arg1) do
        if type(key) == "number" then
            if math.floor(key) == key and 1 <= key then
                if not isEncodable(v) then
                    return false
                end

                n = math.max(n, key)
            end
        else
            return false
        end
    end

    return true, n
end

function ConfigNpc:isEncodable(arg1)
    local valueType = type(arg1)
    return valueType == "string" or valueType == "boolean" or valueType == "number" or valueType == "nil" or valueType == "table"
end

return ConfigNpc
