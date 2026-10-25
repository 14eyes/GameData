require("Actor/ActorCommon")
local DailyNpc = require("Actor/Npc/DailyNpc")

local NpcFSMBehaviour = class("NpcFSMBehaviour", DailyNpc)

function NpcFSMBehaviour:DataInit()
    self.ID = self:GetNpcConfigId()
    util.begin_sample("[NpcFSMBehaviour]RequireLua")
    if NG_HSOD_DEBUG then
        util.unrequire(self.ConfigPath)
        util.unrequire(self.BubblePath)
    end

    local v = require(self.ConfigPath)
    local require2 = require(self.BubblePath)
    util.end_sample()
    if v ~= false and v ~= true then
        self.ConfigData = v.Data
    end

    if self.ConfigData == nil then
        print("NpcFSMBehaviour config data nil , NPC_id: " .. tostring(self.ID))
        return
    end

    util.begin_sample("[NpcFSMBehaviour]DailyScheduleData")
    if self.ConfigData.DailyScheduleData ~= nil then
        for i = 1, #self.ConfigData.DailyScheduleData do
            local v2 = self.ConfigData.DailyScheduleData[i]
            if v2 ~= nil then
                local get = CS.MoleMole.DailyAction.Get()
                if v2.condition ~= nil then
                    get.condition = NpcUtil.GetConditionData(v2.condition)
                    if v2.condition.priority ~= nil then
                        get.priority = v2.condition.priority
                    end
                end

                if v2.priority ~= nil then
                    get.priority = v2.priority
                end

                if v2.conditionGrp ~= nil then
                    get:SetConditionGroup(v2.conditionGrp)
                end

                if v2.actionPoints ~= nil then
                    get:SetActionPointCapacity(#v2.actionPoints)
                    for j, actionPoint in ipairs(v2.actionPoints) do
                        local get2 = CS.MoleMole.DummyActionPoint.Get()
                        get:AddActionPoint(get2)
                        if nil ~= actionPoint.dummypoint then
                            local dummypoint = CS.MoleMole.DummyPoint.Get()
                            if nil ~= actionPoint.dummypoint.pos then
                                dummypoint:SetPos(actionPoint.dummypoint.pos.x, actionPoint.dummypoint.pos.y, actionPoint.dummypoint.pos.z)
                            end

                            if nil ~= actionPoint.dummypoint.rot then
                                dummypoint:SetRot(actionPoint.dummypoint.rot.x, actionPoint.dummypoint.rot.y, actionPoint.dummypoint.rot.z)
                            end

                            get2.dummypoint = dummypoint
                        end

                        get2.action = actionPoint.action
                        get2.time = actionPoint.time
                        get2.freestyle = actionPoint.freestyle
                        get2.stateSuiteKey = actionPoint.stateSuiteKey
                        get2.actionPointType = actionPoint.actionPointType
                        get2.actionPointId = actionPoint.actionPointId
                        get2.phoneme = actionPoint.phoneme
                        get2.emotion = actionPoint.emotion
                        get2.disableBlink = actionPoint.disableBlink
                        if actionPoint.lookAtType ~= nil then
                            get2.lookAtType = actionPoint.lookAtType
                        end

                        if actionPoint.reactOnCollide ~= nil then
                            get2.reactOnCollide = actionPoint.reactOnCollide
                        end

                        if actionPoint.reactOnBodyLang ~= nil then
                            get2.reactOnBodyLang = actionPoint.reactOnBodyLang
                        end

                        if actionPoint.moveType ~= nil then
                            get2.moveType = actionPoint.moveType
                        else
                            if v2.defaultMoveType ~= nil then
                                get2.moveType = v2.defaultMoveType
                            end
                        end

                        if actionPoint.floatingHeight ~= nil then
                            get2.floatingHeight = actionPoint.floatingHeight
                        else
                            if v2.defaultFloatingHeight ~= nil then
                                get2.floatingHeight = v2.defaultFloatingHeight
                            end
                        end

                        if nil ~= actionPoint.platformPoint then
                            local platformPoint = CS.MoleMole.PlatformPoint.Get()
                            platformPoint:SetGroupConfig(actionPoint.platformPoint.groupId, actionPoint.platformPoint.configId)
                            if nil ~= actionPoint.platformPoint.offsetPos then
                                platformPoint:SetOffsetPos(actionPoint.platformPoint.offsetPos.x, actionPoint.platformPoint.offsetPos.y, actionPoint.platformPoint.offsetPos.z)
                            end

                            if nil ~= actionPoint.platformPoint.offsetRot then
                                platformPoint:SetOffsetRot(actionPoint.platformPoint.offsetRot.x, actionPoint.platformPoint.offsetRot.y, actionPoint.platformPoint.offsetRot.z)
                            end

                            get2.platformPoint = platformPoint
                        end
                    end
                end

                if v2.schedulePoints ~= nil then
                    get:SetSchedulePointCapacity(#v2.schedulePoints)
                    for j, schedulePoint in ipairs(v2.schedulePoints) do
                        local get2 = CS.MoleMole.SchedulePoint.Get()
                        get:AddSchedulePoint(get2)
                        get2.startTime = schedulePoint.startTime
                        get2.id = schedulePoint.id
                        get2.tag = schedulePoint.tag
                        get2.actionType1 = schedulePoint.actionType1
                        get2.actionType2 = schedulePoint.actionType2
                        get2.actionType3 = schedulePoint.actionType3
                        if schedulePoint.waitTime ~= nil then
                            get2.waitTime = schedulePoint.waitTime
                        end

                        if schedulePoint.isKeySchedulePoint ~= nil then
                            get2.isKeySchedulePoint = schedulePoint.isKeySchedulePoint
                        end
                    end
                end

                get.bornConfigId = 0
                if v2.bornConfigId ~= nil then
                    get.bornConfigId = v2.bornConfigId
                end

                get.transTeleport = v2.transTeleport
                self.uActor:AddDailyConfigData(get)
            end
        end

        if self.ConfigData.DailyScheduleData.refreshDailyActionImmediately ~= nil then
            self.uActor:SetRefreshDailyImme(self.ConfigData.DailyScheduleData.refreshDailyActionImmediately)
        end
    end

    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]ActionPointWeights")
    if self.ConfigData.ActionPointWeights ~= nil then
        for i = 1, #self.ConfigData.ActionPointWeights do
            local actionPointWeight = self.ConfigData.ActionPointWeights[i]
            if actionPointWeight ~= nil then
                self.uActor:SetActionPointWeight(actionPointWeight.type, actionPointWeight.weight)
            end
        end
    end

    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]StartDailyFSM")
    self.uActor:StartDailyFSM()
    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]tempBubbleData")
    if require2 ~= false and require2 ~= true then
        if require2.BubbleData ~= nil then
            self.bubbleData2 = require2.BubbleData
            self.bubbleData = nil
        else
            self.bubbleData = require2.Data
            self.bubbleData2 = nil
        end
    end

    self:TryCreateDailySpeechBubbleTask()
    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]HomeScheduleData")
    self:TryCreateHomeTask(self.ConfigData.HomeScheduleData)
    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]CardScheduleData")
    self:TryCreateCardSummonTask(self.ConfigData.CardScheduleData)
    util.end_sample()
    util.begin_sample("[NpcFSMBehaviour]LoungeScheduleData")
    self:TryCreateLoungeTask(self.ConfigData.LoungeScheduleData)
    util.end_sample()
end

function NpcFSMBehaviour:TryCreateHomeTask(arg1)
    if nil == arg1 then
        return
    end

    if self.homeTask == nil then
        self.homeTask = self:CreateTask(TaskID.HOME_TASK_ID, LuaTaskType.HOME, "Home")
        self.homeTask:InitParam(arg1.disableAutoBlinking, arg1.disableEmotion, arg1.disablePhoneme, arg1.actionList, arg1.bubbleGroup, arg1.Greet)
    end
end

function NpcFSMBehaviour:TryCreateCardSummonTask(arg1)
    if nil == arg1 then
        return
    end

    if self.cardTask == nil then
        self.cardTask = self:CreateTask(TaskID.CARD_SUMMON_TASK_ID, LuaTaskType.CARD_SUMMON, "Card")
        self.cardTask:InitParam(arg1.disableAutoBlinking, arg1.disableEmotion, arg1.disablePhoneme, arg1.actionList, arg1.bubbleGroup)
    end
end

function NpcFSMBehaviour:TryCreateLoungeTask(arg1)
    if nil == arg1 then
        return
    end

    if self.loungeTask == nil then
        self.loungeTask = self:CreateTask(TaskID.LOUNGE_TASK_ID, LuaTaskType.LOUNGE, "Lounge")
        self.loungeTask:InitParam(arg1.disableAutoBlinking, arg1.disableEmotion, arg1.disablePhoneme, arg1.actionList, arg1.Greet)
    end
end

function NpcFSMBehaviour:OnEvent(arg1) end
function NpcFSMBehaviour:StartDay() end
function NpcFSMBehaviour:OnCollisionEnter(arg1) end

function NpcFSMBehaviour:OnAppear()
    if self.uActor ~= nil then
        if self.uActor:IsDailySpeechBubbleDisabled() ~= false then
            goto lbl_11
        end
    end

    self:TryCreateDailySpeechBubbleTask()
    ::lbl_11::
end

function NpcFSMBehaviour:OnDisappear()
    self.speechBubbleTask = nil
end

return NpcFSMBehaviour
