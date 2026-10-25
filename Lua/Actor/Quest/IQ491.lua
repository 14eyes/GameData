require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest491 = class("Quest491", QuestActorProxy)
Quest491.defaultAlias = "Quest491"
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest491:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["49101"] = self.OnSubStart49101
    self.subStartHandlers["49102"] = self.OnSubStart49102
end

function Quest491:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["49101"] = self.OnSubFinish49101
    self.subFinishHandlers["49102"] = self.OnSubFinish49102
end

function Quest491:OnSubFinish49102(arg1)
    print("49102 Finish: Paimon Talk")
    if self:GetSubQuestState(46613) == 3 then
        self.uActor:AvatarPaimonAppear()
        globalActor:StopLocalAvatar()
        globalActor:EnablePlayerInput(false)
        self:NarratorOnlyTask(self.clientData.NarratorData.Story1)
        self:CallDelay(5, self.OnEnableInput2)
    end
end

function Quest491:OnEnableInput2()
    print("49102 DelayFinish: Enable Player Input")
    self.uActor:AvatarPaimonDisappear(nil, false)
    globalActor:EnablePlayerInput(true)
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q46625Player").pos, sceneData:GetDummyPoint(3, "Q46625Player").rot)
end

function Quest491:OnSubFinish49101(arg1)
    print("49104 Finish : BartenderShow")
    self:NotifyTo("Npc1433", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1465", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1523", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest491:Start() end
function Quest491:OnDestroy() end
return Quest491
