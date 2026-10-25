require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77242 = class("Quest77242", QuestActorProxy)
Quest77242.defaultAlias = "Quest77242"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77242:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77242:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7724201"] = self.OnSubStart7724201,
        ["7724202"] = self.OnSubStart7724202,
        ["7724204"] = self.OnSubStart7724204,
        ["7724205"] = self.OnSubStart7724205,
        ["7724207"] = self.OnSubStart7724207,
        ["7724206"] = self.OnSubStart7724206,
        ["7724203"] = self.OnSubStart7724203,
        ["7724208"] = self.OnSubStart7724208
    }
end

function Quest77242:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7724201"] = self.OnSubFinish7724201,
        ["7724202"] = self.OnSubFinish7724202,
        ["7724204"] = self.OnSubFinish7724204,
        ["7724205"] = self.OnSubFinish7724205,
        ["7724207"] = self.OnSubFinish7724207,
        ["7724206"] = self.OnSubFinish7724206,
        ["7724203"] = self.OnSubFinish7724203,
        ["7724208"] = self.OnSubFinish7724208
    }
end

function Quest77242:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77242:Start()
    print("Start")
end

function Quest77242:OnDestroy()
    print("OnDestroy")
end

function Quest77242:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77242:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77242:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77242:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7724201igger", 77242)
    this:ActorDestroy("Q7724202RmdTrigger", 77242)
    this:ActorDestroy("Q7724203Trigger", 77242)
end

function Quest77242:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77242:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77242:OnSubStart7724201(arg1)
    print("OnSubStart7724201")
    this:CreateQuestNpc(arg1, npcs.Npc22805.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22816.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22806.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7724201igger", "Actor/Gadget/Q7724201igger", 70900002, 0, points._Q7724201iggerPoint_.pos, points._Q7724201iggerPoint_.rot, true, false, 3, nil, 0, 77242)
end

function Quest77242:OnSubFinish7724201(arg1)
    print("OnSubFinish7724201")
end

function Quest77242:OnSubStart7724202(arg1)
    print("OnSubStart7724202")
    actorMgr:CreateActorWithPos("Q7724202RmdTrigger", "Actor/Gadget/Q7724202RmdTrigger", 70900002, 0, points._Q7724202RmdTriggerPoint_.pos, points._Q7724202RmdTriggerPoint_.rot, true, false, 3, nil, 0, 77242)
end

function Quest77242:OnSubFinish7724202(arg1)
    print("OnSubFinish7724202")
end

function Quest77242:OnSubStart7724204(arg1)
    print("OnSubStart7724204")
end

function Quest77242:OnSubFinish7724204(arg1)
    print("OnSubFinish7724204")
end

function Quest77242:OnSubStart7724205(arg1)
    print("OnSubStart7724205")
end

function Quest77242:OnSubFinish7724205(arg1)
    print("OnSubFinish7724205")
end

function Quest77242:OnSubStart7724207(arg1)
    print("OnSubStart7724207")
end

function Quest77242:OnSubFinish7724207(arg1)
    print("OnSubFinish7724207")
end

function Quest77242:OnSubStart7724206(arg1)
    print("OnSubStart7724206")
    this:GetQuestNpcActor(npcs.Npc22805.alias, 77242):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest77242:OnSubFinish7724206(arg1)
    print("OnSubFinish7724206")
end

function Quest77242:OnSubStart7724203(arg1)
    print("OnSubStart7724203")
    this:CreateQuestNpc(arg1, npcs.Npc22815.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7724203Trigger", "Actor/Gadget/Q7724203Trigger", 70900002, 0, points._Q7724203TriggerPoint_.pos, points._Q7724203TriggerPoint_.rot, true, false, 3, nil, 0, 77242)
end

function Quest77242:OnSubFinish7724203(arg1)
    print("OnSubFinish7724203")
    this:NpcDestroyImmediately(3, npcs.Npc22805.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22815.alias)
end

function Quest77242:OnSubStart7724208(arg1)
    print("OnSubStart7724208")
end

function Quest77242:OnSubFinish7724208(arg1)
    print("OnSubFinish7724208")
    this:NpcDestroyImmediately(3, npcs.Npc22816.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22806.alias)
end

return Quest77242
