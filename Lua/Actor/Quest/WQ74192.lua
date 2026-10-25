require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74192 = class("Quest74192", QuestActorProxy)
Quest74192.defaultAlias = "Quest74192"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74192:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74192:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419206"] = self.OnSubStart7419206,
        ["7419207"] = self.OnSubStart7419207,
        ["7419201"] = self.OnSubStart7419201,
        ["7419202"] = self.OnSubStart7419202,
        ["7419203"] = self.OnSubStart7419203,
        ["7419204"] = self.OnSubStart7419204,
        ["7419205"] = self.OnSubStart7419205
    }
end

function Quest74192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419206"] = self.OnSubFinish7419206,
        ["7419207"] = self.OnSubFinish7419207,
        ["7419201"] = self.OnSubFinish7419201,
        ["7419202"] = self.OnSubFinish7419202,
        ["7419203"] = self.OnSubFinish7419203,
        ["7419204"] = self.OnSubFinish7419204,
        ["7419205"] = self.OnSubFinish7419205
    }
end

function Quest74192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74192:Start()
    print("Start")
end

function Quest74192:OnDestroy()
    print("OnDestroy")
end

function Quest74192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74192:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74192:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74192:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest74192:OnSubStart7419206(arg1)
    print("OnSubStart7419206")
    actorMgr:CreateActorWithPos("Q74192paimon1Trigger", "Actor/Gadget/Q74192paimon1Trigger", 70900002, 0, points.TPos_Q74192paimon1Trigger.pos, points.TPos_Q74192paimon1Trigger.rot, true, false, 3)
end

function Quest74192:OnSubFinish7419206(arg1)
    print("OnSubFinish7419206")
    this:ActorDestroy("Q74192paimon1Trigger")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest74192:OnSubStart7419207(arg1)
    print("OnSubStart7419207")
    actorMgr:CreateActorWithPos("Q74192paimon1Trigger", "Actor/Gadget/Q74192paimon1Trigger", 70900002, 0, points.TPos_Q74192paimon1Trigger.pos, points.TPos_Q74192paimon1Trigger.rot, true, false, 3)
end

function Quest74192:OnSubFinish7419207(arg1)
    print("OnSubFinish7419207")
    this:ActorDestroy("Q74192paimon1Trigger")
    globalActor:ResumePaimonInProfilePage({3})
end

function Quest74192:OnSubStart7419201(arg1)
    print("OnSubStart7419201")
    this:CreateQuestNpc(arg1, npcs.Npc21236Data.id, 0)
end

function Quest74192:OnSubFinish7419201(arg1)
    print("OnSubFinish7419201")
    this:NpcDestroyWithDither(npcs.Npc21236Data.alias, 3)
end

function Quest74192:OnSubStart7419202(arg1)
    print("OnSubStart7419202")
    this:CreateQuestNpc(arg1, npcs.Npc21237Data.id, 0)
end

function Quest74192:OnSubFinish7419202(arg1)
    print("OnSubFinish7419202")
    this:NpcDestroyWithDither(npcs.Npc21237Data.alias, 3)
end

function Quest74192:OnSubStart7419203(arg1)
    print("OnSubStart7419203")
    this:CreateQuestNpc(arg1, npcs.Npc21348Data.id, 0)
end

function Quest74192:OnSubFinish7419203(arg1)
    print("OnSubFinish7419203")
    this:NpcDestroyWithDither(npcs.Npc21348Data.alias, 3)
end

function Quest74192:OnSubStart7419204(arg1)
    print("OnSubStart7419204")
    this:CreateQuestNpc(arg1, npcs.Npc21349Data.id, 0)
end

function Quest74192:OnSubFinish7419204(arg1)
    print("OnSubFinish7419204")
    this:NpcDestroyWithDither(npcs.Npc21349Data.alias, 3)
end

function Quest74192:OnSubStart7419205(arg1)
    print("OnSubStart7419205")
end

function Quest74192:OnSubFinish7419205(arg1)
    print("OnSubFinish7419205")
end

return Quest74192
