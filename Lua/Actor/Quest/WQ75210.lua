require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75210 = class("Quest75210", QuestActorProxy)
Quest75210.defaultAlias = "Quest75210"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75210:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7521001"] = self.OnSubStart7521001,
        ["7521002"] = self.OnSubStart7521002,
        ["7521003"] = self.OnSubStart7521003,
        ["7521004"] = self.OnSubStart7521004,
        ["7521005"] = self.OnSubStart7521005,
        ["7521006"] = self.OnSubStart7521006,
        ["7521007"] = self.OnSubStart7521007,
        ["7521008"] = self.OnSubStart7521008
    }
end

function Quest75210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7521001"] = self.OnSubFinish7521001,
        ["7521002"] = self.OnSubFinish7521002,
        ["7521003"] = self.OnSubFinish7521003,
        ["7521004"] = self.OnSubFinish7521004,
        ["7521005"] = self.OnSubFinish7521005,
        ["7521006"] = self.OnSubFinish7521006,
        ["7521007"] = self.OnSubFinish7521007,
        ["7521008"] = self.OnSubFinish7521008
    }
end

function Quest75210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75210:Start()
    print("Start")
end

function Quest75210:OnDestroy()
    print("OnDestroy")
end

function Quest75210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75210:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7521005Trigger")
    this:ActorDestroy("Q7521003Tigger")
    this:ActorDestroy("Q7521007Trigger")
    this:ActorDestroy("Q7521008Trigger")
end

function Quest75210:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75210:OnSubStart7521001(arg1)
    print("OnSubStart7521001")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75210:OnSubFinish7521001(arg1)
    print("OnSubFinish7521001")
end

function Quest75210:OnSubStart7521002(arg1)
    print("OnSubStart7521002")
end

function Quest75210:OnSubFinish7521002(arg1)
    print("OnSubFinish7521002")
end

function Quest75210:OnSubStart7521003(arg1)
    print("OnSubStart7521003")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521003Tigger", "Actor/Gadget/Q7521003Tigger", 70900002, 0, points._Q7521003TiggerPoint_.pos, points._Q7521003TiggerPoint_.rot, true, false, 3)
    this:TransmitPlayerWithDialogTextByQuestId(7521003, 2, datas.DialogIdsData_4, 0, nil, nil, nil)
end

function Quest75210:OnSubFinish7521003(arg1)
    print("OnSubFinish7521003")
end

function Quest75210:OnSubStart7521004(arg1)
    print("OnSubStart7521004")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75210:OnSubFinish7521004(arg1)
    print("OnSubFinish7521004")
end

function Quest75210:OnSubStart7521005(arg1)
    print("OnSubStart7521005")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521005Trigger", "Actor/Gadget/Q7521005Trigger", 70900002, 0, points._Q7521005TriggerPoint_.pos, points._Q7521005TriggerPoint_.rot, true, false, 3)
end

function Quest75210:OnSubFinish7521005(arg1)
    print("OnSubFinish7521005")
end

function Quest75210:OnSubStart7521006(arg1)
    print("OnSubStart7521006")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75210:OnSubFinish7521006(arg1)
    print("OnSubFinish7521006")
end

function Quest75210:OnSubStart7521007(arg1)
    print("OnSubStart7521007")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
end

function Quest75210:OnSubFinish7521007(arg1)
    print("OnSubFinish7521007")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogIdsData_2, 3, nil, nil, nil)
end

function Quest75210:OnSubStart7521008(arg1)
    print("OnSubStart7521008")
    this:CreateQuestNpc(arg1, npcs.Npc6547_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7521008Trigger", "Actor/Gadget/Q7521008Trigger", 70900002, 0, points._Q7521008TriggerPoint_.pos, points._Q7521008TriggerPoint_.rot, true, false, 3)
end

function Quest75210:OnSubFinish7521008(arg1)
    print("OnSubFinish7521008")
    this:SafeDestroyQuestNpc(npcs.Npc6547_1.alias, 3)
end

return Quest75210
