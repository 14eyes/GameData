require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75173 = class("Quest75173", QuestActorProxy)
Quest75173.defaultAlias = "Quest75173"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75173:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517301"] = self.OnSubStart7517301,
        ["7517304"] = self.OnSubStart7517304,
        ["7517308"] = self.OnSubStart7517308,
        ["7517302"] = self.OnSubStart7517302,
        ["7517305"] = self.OnSubStart7517305,
        ["7517309"] = self.OnSubStart7517309,
        ["7517303"] = self.OnSubStart7517303,
        ["7517311"] = self.OnSubStart7517311,
        ["7517306"] = self.OnSubStart7517306,
        ["7517310"] = self.OnSubStart7517310,
        ["7517307"] = self.OnSubStart7517307
    }
end

function Quest75173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517301"] = self.OnSubFinish7517301,
        ["7517304"] = self.OnSubFinish7517304,
        ["7517308"] = self.OnSubFinish7517308,
        ["7517302"] = self.OnSubFinish7517302,
        ["7517305"] = self.OnSubFinish7517305,
        ["7517309"] = self.OnSubFinish7517309,
        ["7517303"] = self.OnSubFinish7517303,
        ["7517311"] = self.OnSubFinish7517311,
        ["7517306"] = self.OnSubFinish7517306,
        ["7517310"] = self.OnSubFinish7517310,
        ["7517307"] = self.OnSubFinish7517307
    }
end

function Quest75173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75173:Start()
    print("Start")
end

function Quest75173:OnDestroy()
    print("OnDestroy")
end

function Quest75173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75173:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75173:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75173:OnSubStart7517301(arg1)
    print("OnSubStart7517301")
    this:CreateQuestNpc(arg1, npcs.Npc6407.id, 0, false, 0)
end

function Quest75173:OnSubFinish7517301(arg1)
    print("OnSubFinish7517301")
end

function Quest75173:OnSubStart7517304(arg1)
    print("OnSubStart7517304")
end

function Quest75173:OnSubFinish7517304(arg1)
    print("OnSubFinish7517304")
    this:TransmitPlayerByQuestId(7517304, 3, nil, nil, nil)
end

function Quest75173:OnSubStart7517308(arg1)
    print("OnSubStart7517308")
    actorMgr:CreateActorWithPos("Trigger7517308", "Actor/Gadget/Trigger7517308", 70900002, 0, points._Trigger7517308Point_.pos, points._Trigger7517308Point_.rot, true, false, 3)
end

function Quest75173:OnSubFinish7517308(arg1)
    print("OnSubFinish7517308")
    this:SafeDestroyQuestNpc(npcs.Npc6407.alias, 3)
    this:ActorDestroy("Trigger7517308")
end

function Quest75173:OnSubStart7517302(arg1)
    print("OnSubStart7517302")
    this:CreateQuestNpc(arg1, npcs.Npc6408.id, 0, false, 0)
end

function Quest75173:OnSubFinish7517302(arg1)
    print("OnSubFinish7517302")
end

function Quest75173:OnSubStart7517305(arg1)
    print("OnSubStart7517305")
end

function Quest75173:OnSubFinish7517305(arg1)
    print("OnSubFinish7517305")
    this:TransmitPlayerByQuestId(7517305, 4, nil, nil, nil)
end

function Quest75173:OnSubStart7517309(arg1)
    print("OnSubStart7517309")
    actorMgr:CreateActorWithPos("Trigger7517309", "Actor/Gadget/Trigger7517309", 70900002, 0, points._Trigger7517309Point_.pos, points._Trigger7517309Point_.rot, true, false, 3)
end

function Quest75173:OnSubFinish7517309(arg1)
    print("OnSubFinish7517309")
    this:SafeDestroyQuestNpc(npcs.Npc6408.alias, 3)
    this:ActorDestroy("Trigger7517309")
end

function Quest75173:OnSubStart7517303(arg1)
    print("OnSubStart7517303")
    this:CreateQuestNpc(arg1, npcs.Npc6409.id, 0, false, 0)
end

function Quest75173:OnSubFinish7517303(arg1)
    print("OnSubFinish7517303")
    this:TransmitPlayerByQuestId(7517303, 6, nil, nil, nil)
end

function Quest75173:OnSubStart7517311(arg1)
    print("OnSubStart7517311")
    actorMgr:CreateActorWithPos("Trigger7517311", "Actor/Gadget/Trigger7517311", 70900002, 0, points._Trigger7517311Point_.pos, points._Trigger7517311Point_.rot, true, false, 3)
end

function Quest75173:OnSubFinish7517311(arg1)
    print("OnSubFinish7517311")
    this:ActorDestroy("Trigger7517311")
end

function Quest75173:OnSubStart7517306(arg1)
    print("OnSubStart7517306")
end

function Quest75173:OnSubFinish7517306(arg1)
    print("OnSubFinish7517306")
    this:TransmitPlayerByQuestId(7517306, 5, nil, nil, nil)
end

function Quest75173:OnSubStart7517310(arg1)
    print("OnSubStart7517310")
    actorMgr:CreateActorWithPos("Trigger7517310", "Actor/Gadget/Trigger7517310", 70900002, 0, points._Trigger7517310Point_.pos, points._Trigger7517310Point_.rot, true, false, 3)
end

function Quest75173:OnSubFinish7517310(arg1)
    print("OnSubFinish7517310")
    this:SafeDestroyQuestNpc(npcs.Npc6409.alias, 3)
    this:ActorDestroy("Trigger7517310")
end

function Quest75173:OnSubStart7517307(arg1)
    print("OnSubStart7517307")
end

function Quest75173:OnSubFinish7517307(arg1)
    print("OnSubFinish7517307")
end

return Quest75173
