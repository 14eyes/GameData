require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75242 = class("Quest75242", QuestActorProxy)
Quest75242.defaultAlias = "Quest75242"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75242:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75242:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524201"] = self.OnSubStart7524201,
        ["7524202"] = self.OnSubStart7524202,
        ["7524203"] = self.OnSubStart7524203,
        ["7524204"] = self.OnSubStart7524204,
        ["7524205"] = self.OnSubStart7524205
    }
end

function Quest75242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524201"] = self.OnSubFinish7524201,
        ["7524202"] = self.OnSubFinish7524202,
        ["7524203"] = self.OnSubFinish7524203,
        ["7524204"] = self.OnSubFinish7524204,
        ["7524205"] = self.OnSubFinish7524205
    }
end

function Quest75242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75242:Start()
    print("Start")
end

function Quest75242:OnDestroy()
    print("OnDestroy")
end

function Quest75242:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75242:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75242:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75242:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7524205Trigger")
end

function Quest75242:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75242:OnSubStart7524201(arg1)
    print("OnSubStart7524201")
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6550.id, 0, false, 0)
end

function Quest75242:OnSubFinish7524201(arg1)
    print("OnSubFinish7524201")
    this:TransmitPlayerByData(arg1, 1, datas.DialogIdsData, nil, nil, nil)
end

function Quest75242:OnSubStart7524202(arg1)
    print("OnSubStart7524202")
    this:CreateQuestNpc(arg1, npcs.Npc6550.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
end

function Quest75242:OnSubFinish7524202(arg1)
    print("OnSubFinish7524202")
end

function Quest75242:OnSubStart7524203(arg1)
    print("OnSubStart7524203")
    this:CreateQuestNpc(arg1, npcs.Npc6550.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
end

function Quest75242:OnSubFinish7524203(arg1)
    print("OnSubFinish7524203")
end

function Quest75242:OnSubStart7524204(arg1)
    print("OnSubStart7524204")
    this:CreateQuestNpc(arg1, npcs.Npc6550.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
end

function Quest75242:OnSubFinish7524204(arg1)
    print("OnSubFinish7524204")
end

function Quest75242:OnSubStart7524205(arg1)
    print("OnSubStart7524205")
    this:CreateQuestNpc(arg1, npcs.Npc6550.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6549.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7524205Trigger", "Actor/Gadget/Q7524205Trigger", 70900002, 0, points._Q7524205TriggerPoint_.pos, points._Q7524205TriggerPoint_.rot, true, false, 3)
end

function Quest75242:OnSubFinish7524205(arg1)
    print("OnSubFinish7524205")
    this:SafeDestroyQuestNpc(npcs.Npc6550.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6549.alias, 3)
end

return Quest75242
