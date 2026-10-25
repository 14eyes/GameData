require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41341 = class("Quest41341", QuestActorProxy)
Quest41341.defaultAlias = "Quest41341"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41341:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41341:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4134101"] = self.OnSubStart4134101,
        ["4134102"] = self.OnSubStart4134102,
        ["4134103"] = self.OnSubStart4134103,
        ["4134104"] = self.OnSubStart4134104,
        ["4134105"] = self.OnSubStart4134105,
        ["4134106"] = self.OnSubStart4134106,
        ["4134107"] = self.OnSubStart4134107
    }
end

function Quest41341:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4134101"] = self.OnSubFinish4134101,
        ["4134102"] = self.OnSubFinish4134102,
        ["4134103"] = self.OnSubFinish4134103,
        ["4134104"] = self.OnSubFinish4134104,
        ["4134105"] = self.OnSubFinish4134105,
        ["4134106"] = self.OnSubFinish4134106,
        ["4134107"] = self.OnSubFinish4134107
    }
end

function Quest41341:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4134101"] = self.OnSubFailed4134101,
        ["4134102"] = self.OnSubFailed4134102,
        ["4134103"] = self.OnSubFailed4134103,
        ["4134104"] = self.OnSubFailed4134104,
        ["4134105"] = self.OnSubFailed4134105,
        ["4134106"] = self.OnSubFailed4134106,
        ["4134107"] = self.OnSubFailed4134107
    }
end

function Quest41341:Start()
    print("Start")
end

function Quest41341:OnDestroy()
    print("OnDestroy")
end

function Quest41341:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41341:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41341:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:PaimonDis()
    self:UnSpawn(gadgets.Gadget71700184Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc211801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc211901Data.alias, 3)
    self:NotifyTo("Npc2118", 0, true)
    self:NotifyTo("Npc2119", 0, true)
end

function Quest41341:Hide2118()
    print("Hide2118")
    self:NotifyTo("Npc2118", 1, true)
end

function Quest41341:Hide2119()
    print("Hide2119")
    self:NotifyTo("Npc2119", 1, true)
end

function Quest41341:Speech211801()
    print("Speech211801")
    self:ClearSpeechBubbleTask()
    self:CreateSpeechBubbleTask(npcs.Npc211801Data.id, 413410702, 2, false, 0, 0)
    self:CallDelay(2, self.Finish4134107)
end

function Quest41341:Finish4134107()
    print("Finish4134107")
    self:ClearSpeechBubbleTask()
    self:FinishQuestID(false, 4134107)
end

function Quest41341:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.paimonData.alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest41341:OnSubStart4134101(arg1)
    print("OnSubStart4134101")
    self:Hide2118()
    self:Hide2119()
    self:CreateQuestNpc(arg1, npcs.Npc211801Data.id, 1)
end

function Quest41341:OnSubFinish4134101(arg1)
    print("OnSubFinish4134101")
    self:SafeDestroyQuestNpc(npcs.Npc211801Data.alias, 3)
    self:PaimonDis()
end

function Quest41341:OnSubFailed4134101(arg1)
    print("OnSubFailed4134101")
end

function Quest41341:OnSubStart4134102(arg1)
    print("OnSubStart4134102")
    self:Hide2118()
    self:Hide2119()
    self:CreateQuestNpc(arg1, npcs.Npc211901Data.id, 1)
end

function Quest41341:OnSubFinish4134102(arg1)
    print("OnSubFinish4134102")
    self:PaimonDis()
end

function Quest41341:OnSubFailed4134102(arg1)
    print("OnSubFailed4134102")
end

function Quest41341:OnSubStart4134103(arg1)
    print("OnSubStart4134103")
    self:UnSpawn(gadgets.Gadget71700184Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700184Data.id, 1, 0)
end

function Quest41341:OnSubFinish4134103(arg1)
    print("OnSubFinish4134103")
    self:UnSpawn(gadgets.Gadget71700184Data.alias)
end

function Quest41341:OnSubFailed4134103(arg1)
    print("OnSubFailed4134103")
end

function Quest41341:OnSubStart4134104(arg1)
    print("OnSubStart4134104")
    self:Hide2118()
    self:Hide2119()
end

function Quest41341:OnSubFinish4134104(arg1)
    print("OnSubFinish4134104")
    self:SafeDestroyQuestNpc(npcs.Npc211801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc211901Data.alias, 3)
    self:PaimonDis()
end

function Quest41341:OnSubFailed4134104(arg1)
    print("OnSubFailed4134104")
end

function Quest41341:OnSubStart4134105(arg1)
    print("OnSubStart4134105")
    self:Hide2118()
    self:Hide2119()
end

function Quest41341:OnSubFinish4134105(arg1)
    print("OnSubFinish4134105")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest41341:OnSubFailed4134105(arg1)
    print("OnSubFailed4134105")
end

function Quest41341:OnSubStart4134106(arg1)
    print("OnSubStart4134106")
    actorMgr:CreateActorWithPos(datas.Q4134106Trigger_.alias, datas.Q4134106Trigger_.script, datas.Q4134106Trigger_.id, 0, datas.Q4134106Trigger_.point.pos, datas.Q4134106Trigger_.point.rot, true, false, 3)
    self:Hide2118()
    self:Hide2119()
    self:CreateQuestNpc(arg1, npcs.Npc211801Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc211901Data.id, 2)
end

function Quest41341:OnSubFinish4134106(arg1)
    print("OnSubFinish4134106")
end

function Quest41341:OnSubFailed4134106(arg1)
    print("OnSubFailed4134106")
end

function Quest41341:OnSubStart4134107(arg1)
    print("OnSubStart4134107")
    self:Hide2118()
    self:Hide2119()
    self:RequestInteraction(npcs.Npc211901Data.alias)
end

function Quest41341:OnSubFinish4134107(arg1)
    print("OnSubFinish4134107")
    self:SafeDestroyQuestNpc(npcs.Npc211801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc211901Data.alias, 3)
    self:NotifyTo("Npc2118", 0, true)
    self:NotifyTo("Npc2119", 0, true)
    self:PaimonDis()
end

function Quest41341:OnSubFailed4134107(arg1)
    print("OnSubFailed4134107")
end

return Quest41341
