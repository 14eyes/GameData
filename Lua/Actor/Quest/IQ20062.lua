require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20062 = class("Quest20062", QuestActorProxy)
Quest20062.defaultAlias = "Quest20062"
local clientData
local paimonData
local n

function Quest20062:OnDataLoaded()
    clientData = self.clientData
    n = 22112
    paimonData = clientData.PaimonData
end

function Quest20062:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2006201"] = self.OnSubStart2006201
    self.subStartHandlers["2006202"] = self.OnSubStart2006202
    self.subStartHandlers["2006203"] = self.OnSubStart2006203
    self.subStartHandlers["2006204"] = self.OnSubStart2006204
    self.subStartHandlers["2006205"] = self.OnSubStart2006205
    self.subStartHandlers["2006206"] = self.OnSubStart2006206
    self.subStartHandlers["2006207"] = self.OnSubStart2006207
end

function Quest20062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2006201"] = self.OnSubFinish2006201
    self.subFinishHandlers["2006202"] = self.OnSubFinish2006202
    self.subFinishHandlers["2006203"] = self.OnSubFinish2006203
    self.subFinishHandlers["2006204"] = self.OnSubFinish2006204
    self.subFinishHandlers["2006205"] = self.OnSubFinish2006205
    self.subFinishHandlers["2006206"] = self.OnSubFinish2006206
    self.subFinishHandlers["2006207"] = self.OnSubFinish2006207
end

function Quest20062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2006201"] = self.OnSubFailed2006201
    self.subFailedHandlers["2006202"] = self.OnSubFailed2006202
    self.subFailedHandlers["2006203"] = self.OnSubFailed2006203
    self.subFailedHandlers["2006204"] = self.OnSubFailed2006204
    self.subFailedHandlers["2006205"] = self.OnSubFailed2006205
    self.subFailedHandlers["2006206"] = self.OnSubFailed2006206
    self.subFailedHandlers["2006207"] = self.OnSubFailed2006207
end

function Quest20062:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowBlackScreen(0.5, 1.0, 0.5, self.SummonGadget01)
    end

    if arg1 == 2 then
        self:ShowBlackScreen(0.5, 1.0, 0.5, self.ClearGadget01)
    end

    if arg1 == 3 then
        self:ShowBlackScreen(0.5, 1.0, 0.5, self.SummonGadget02)
    end

    if arg1 == 4 then
        self:ShowBlackScreen(0.5, 1.0, 0.5, self.ClearGadget02)
    end
end

function Quest20062:SummonGadget01()
    local actor = actorMgr:GetActor("Npc1604")
    local pos = actor:GetPos()
    local forward = actor:GetForward()
    pos.z = pos.z + 1.2
    self:SpawnGadgetByIdWithPos(2006203, 70300111, 1, pos, M.Dir2Euler(forward))
end

function Quest20062:ClearGadget01()
    self:UnSpawn("Summon01")
end

function Quest20062:SummonGadget02()
    local actor = actorMgr:GetActor("Npc1604")
    local pos = actor:GetPos()
    local forward = actor:GetForward()
    pos.z = pos.z + 1.2
    self:SpawnGadgetByIdWithPos(2006203, 70300113, 2, pos, M.Dir2Euler(forward))
end

function Quest20062:ClearGadget02()
    self:UnSpawn("Summon02")
end

function Quest20062:OnSubStart2006201(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006201(arg1) end
function Quest20062:OnSubFailed2006201(arg1) end

function Quest20062:OnSubStart2006202(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006202(arg1) end
function Quest20062:OnSubFailed2006202(arg1) end

function Quest20062:OnSubStart2006203(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006203(arg1) end
function Quest20062:OnSubFailed2006203(arg1) end

function Quest20062:OnSubStart2006204(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006204(arg1) end
function Quest20062:OnSubFailed2006204(arg1) end

function Quest20062:OnSubStart2006205(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006205(arg1) end
function Quest20062:OnSubFailed2006205(arg1) end

function Quest20062:OnSubStart2006206(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2006206)
    end
end

function Quest20062:OnSubFinish2006206(arg1) end
function Quest20062:OnSubFailed2006206(arg1) end

function Quest20062:OnSubStart2006207(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.BANDAILY, true)
end

function Quest20062:OnSubFinish2006207(arg1)
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20062:OnSubFailed2006207(arg1) end

function Quest20062:OnMainCanceled()
    self:NotifyTo("Npc1604", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:UnSpawn("Summon01")
    self:UnSpawn("Summon02")
end

function Quest20062:Start() end
function Quest20062:OnDestroyWithDisappear() end
return Quest20062
