require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79041 = class("Quest79041", QuestActorProxy)
Quest79041.defaultAlias = "Quest79041"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest79041:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest79041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904125"] = self.OnSubStart7904125,
        ["7904101"] = self.OnSubStart7904101,
        ["7904102"] = self.OnSubStart7904102,
        ["7904130"] = self.OnSubStart7904130,
        ["7904126"] = self.OnSubStart7904126,
        ["7904103"] = self.OnSubStart7904103,
        ["7904104"] = self.OnSubStart7904104,
        ["7904105"] = self.OnSubStart7904105,
        ["7904106"] = self.OnSubStart7904106,
        ["7904107"] = self.OnSubStart7904107,
        ["7904108"] = self.OnSubStart7904108,
        ["7904131"] = self.OnSubStart7904131,
        ["7904109"] = self.OnSubStart7904109,
        ["7904110"] = self.OnSubStart7904110,
        ["7904111"] = self.OnSubStart7904111,
        ["7904118"] = self.OnSubStart7904118,
        ["7904117"] = self.OnSubStart7904117,
        ["7904119"] = self.OnSubStart7904119,
        ["7904124"] = self.OnSubStart7904124,
        ["7904112"] = self.OnSubStart7904112,
        ["7904113"] = self.OnSubStart7904113,
        ["7904114"] = self.OnSubStart7904114,
        ["7904115"] = self.OnSubStart7904115,
        ["7904121"] = self.OnSubStart7904121,
        ["7904120"] = self.OnSubStart7904120,
        ["7904116"] = self.OnSubStart7904116,
        ["7904122"] = self.OnSubStart7904122,
        ["7904123"] = self.OnSubStart7904123,
        ["7904127"] = self.OnSubStart7904127,
        ["7904128"] = self.OnSubStart7904128,
        ["7904129"] = self.OnSubStart7904129
    }
end

function Quest79041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904125"] = self.OnSubFinish7904125,
        ["7904101"] = self.OnSubFinish7904101,
        ["7904102"] = self.OnSubFinish7904102,
        ["7904130"] = self.OnSubFinish7904130,
        ["7904126"] = self.OnSubFinish7904126,
        ["7904103"] = self.OnSubFinish7904103,
        ["7904104"] = self.OnSubFinish7904104,
        ["7904105"] = self.OnSubFinish7904105,
        ["7904106"] = self.OnSubFinish7904106,
        ["7904107"] = self.OnSubFinish7904107,
        ["7904108"] = self.OnSubFinish7904108,
        ["7904131"] = self.OnSubFinish7904131,
        ["7904109"] = self.OnSubFinish7904109,
        ["7904110"] = self.OnSubFinish7904110,
        ["7904111"] = self.OnSubFinish7904111,
        ["7904118"] = self.OnSubFinish7904118,
        ["7904117"] = self.OnSubFinish7904117,
        ["7904119"] = self.OnSubFinish7904119,
        ["7904124"] = self.OnSubFinish7904124,
        ["7904112"] = self.OnSubFinish7904112,
        ["7904113"] = self.OnSubFinish7904113,
        ["7904114"] = self.OnSubFinish7904114,
        ["7904115"] = self.OnSubFinish7904115,
        ["7904121"] = self.OnSubFinish7904121,
        ["7904120"] = self.OnSubFinish7904120,
        ["7904116"] = self.OnSubFinish7904116,
        ["7904122"] = self.OnSubFinish7904122,
        ["7904123"] = self.OnSubFinish7904123,
        ["7904127"] = self.OnSubFinish7904127,
        ["7904128"] = self.OnSubFinish7904128,
        ["7904129"] = self.OnSubFinish7904129
    }
end

function Quest79041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79041:Start()
    print("Start")
end

function Quest79041:OnDestroy()
    print("OnDestroy")
end

function Quest79041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79041:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13247Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 10)
    actorMgr:DestroyEntityActor("Q7904104Trigger1", 10, false)
    actorMgr:DestroyEntityActor("Q7904105Trigger", 10, false)
    actorMgr:DestroyEntityActor("Q7904108Trigger", 10, false)
    actorMgr:DestroyEntityActor("Q7904119Trigger", 10, false)
    actorMgr:DestroyEntityActor("7904116Trigger", 10, false)
end

function Quest79041:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79041:CustmiseFunction() end

function Quest79041:RepeatCheckSit()
    print("RepeatCheckSit")
    print("CheckSitPos")
    Quest79041:CallOnAvatarSit(Quest79041.CheckSitPos)
end

function Quest79041:CheckSitPos()
    print("CheckSitPos")
    local pos = sceneData:GetDummyPoint(10, "Q79041sit").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 4 then
        if math.abs(pos.z - avatarPos.z) < 4 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 7904130)
            end
        end
    else
        Quest79041:CallOnAvatarStand(Quest79041.RepeatCheckSit)
    end
end

function Quest79041:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7904119 then
        actorUtils.FinishQuestID(false, 7904119)
    end
end

function Quest79041:OnSubStart7904125(arg1)
    print("OnSubStart7904125")
    actorMgr:CreateActorWithPos("Q7904125Trigger1", "Actor/Gadget/Q7904125Trigger1", 70900002, 0, points.TPos_Q7904125Trigger1.pos, points.TPos_Q7904125Trigger1.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger2", "Actor/Gadget/Q7904125Trigger2", 70900002, 0, points.TPos_Q7904125Trigger2.pos, points.TPos_Q7904125Trigger2.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger3", "Actor/Gadget/Q7904125Trigger3", 70900002, 0, points.TPos_Q7904125Trigger3.pos, points.TPos_Q7904125Trigger3.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger4", "Actor/Gadget/Q7904125Trigger4", 70900002, 0, points.TPos_Q7904125Trigger4.pos, points.TPos_Q7904125Trigger4.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger5", "Actor/Gadget/Q7904125Trigger5", 70900002, 0, points.TPos_Q7904125Trigger5.pos, points.TPos_Q7904125Trigger5.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger6", "Actor/Gadget/Q7904125Trigger6", 70900002, 0, points.TPos_Q7904125Trigger6.pos, points.TPos_Q7904125Trigger6.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger7", "Actor/Gadget/Q7904125Trigger7", 70900002, 0, points.TPos_Q7904125Trigger7.pos, points.TPos_Q7904125Trigger7.rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904125Trigger8", "Actor/Gadget/Q7904125Trigger8", 70900002, 0, points.TPos_Q7904125Trigger8.pos, points.TPos_Q7904125Trigger8.rot, true, false, 10)
end

function Quest79041:OnSubFinish7904125(arg1)
    print("OnSubFinish7904125")
end

function Quest79041:OnSubStart7904101(arg1)
    print("OnSubStart7904101")
    this:CreateQuestNpc(arg1, npcs.Npc13247Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13247Data.id, 1)
end

function Quest79041:OnSubFinish7904101(arg1)
    print("OnSubFinish7904101")
end

function Quest79041:OnSubStart7904102(arg1)
    print("OnSubStart7904102")
    actorMgr:CreateActorWithPos("Q7904102Trigger", "Actor/Gadget/Q7904102Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904102_guide").pos, sceneData:GetDummyPoint(10, "Q7904102_guide").rot, true, false, 10)
end

function Quest79041:OnSubFinish7904102(arg1)
    print("OnSubFinish7904102")
end

function Quest79041:OnSubStart7904130(arg1)
    print("OnSubStart7904130")
    this:RepeatCheckSit()
end

function Quest79041:OnSubFinish7904130(arg1)
    print("OnSubFinish7904130")
end

function Quest79041:OnSubStart7904126(arg1)
    print("OnSubStart7904126")
end

function Quest79041:OnSubFinish7904126(arg1)
    print("OnSubFinish7904126")
end

function Quest79041:OnSubStart7904103(arg1)
    print("OnSubStart7904103")
end

function Quest79041:OnSubFinish7904103(arg1)
    print("OnSubFinish7904103")
end

function Quest79041:OnSubStart7904104(arg1)
    print("OnSubStart7904104")
    actorMgr:CreateActorWithPos("Q7904104Trigger1", "Actor/Gadget/Q7904104Trigger1", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904104_finish").pos, sceneData:GetDummyPoint(10, "Q7904104_finish").rot, true, false, 10)
end

function Quest79041:OnSubFinish7904104(arg1)
    print("OnSubFinish7904104")
end

function Quest79041:OnSubStart7904105(arg1)
    print("OnSubStart7904105")
    actorMgr:CreateActorWithPos("Q7904105Trigger", "Actor/Gadget/Q7904105Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904105_guide").pos, sceneData:GetDummyPoint(10, "Q7904105_guide").rot, true, false, 10)
end

function Quest79041:OnSubFinish7904105(arg1)
    print("OnSubFinish7904105")
end

function Quest79041:OnSubStart7904106(arg1)
    print("OnSubStart7904106")
end

function Quest79041:OnSubFinish7904106(arg1)
    print("OnSubFinish7904106")
end

function Quest79041:OnSubStart7904107(arg1)
    print("OnSubStart7904107")
end

function Quest79041:OnSubFinish7904107(arg1)
    print("OnSubFinish7904107")
end

function Quest79041:OnSubStart7904108(arg1)
    print("OnSubStart7904108")
    actorMgr:CreateActorWithPos("Q7904108Trigger", "Actor/Gadget/Q7904108Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904108_guide").pos, sceneData:GetDummyPoint(10, "Q7904108_guide").rot, true, false, 10)
end

function Quest79041:OnSubFinish7904108(arg1)
    print("OnSubFinish7904108")
end

function Quest79041:OnSubStart7904131(arg1)
    print("OnSubStart7904131")
end

function Quest79041:OnSubFinish7904131(arg1)
    print("OnSubFinish7904131")
end

function Quest79041:OnSubStart7904109(arg1)
    print("OnSubStart7904109")
end

function Quest79041:OnSubFinish7904109(arg1)
    print("OnSubFinish7904109")
end

function Quest79041:OnSubStart7904110(arg1)
    print("OnSubStart7904110")
end

function Quest79041:OnSubFinish7904110(arg1)
    print("OnSubFinish7904110")
end

function Quest79041:OnSubStart7904111(arg1)
    print("OnSubStart7904111")
end

function Quest79041:OnSubFinish7904111(arg1)
    print("OnSubFinish7904111")
end

function Quest79041:OnSubStart7904118(arg1)
    print("OnSubStart7904118")
end

function Quest79041:OnSubFinish7904118(arg1)
    print("OnSubFinish7904118")
end

function Quest79041:OnSubStart7904117(arg1)
    print("OnSubStart7904117")
end

function Quest79041:OnSubFinish7904117(arg1)
    print("OnSubFinish7904117")
end

function Quest79041:OnSubStart7904119(arg1)
    print("OnSubStart7904119")
    actorMgr:CreateActorWithPos("Q7904119Trigger", "Actor/Gadget/Q7904119Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904108_guide").pos, sceneData:GetDummyPoint(10, "Q7904108_guide").rot, true, false, 10)
end

function Quest79041:OnSubFinish7904119(arg1)
    print("OnSubFinish7904119")
end

function Quest79041:OnSubStart7904124(arg1)
    print("OnSubStart7904124")
end

function Quest79041:OnSubFinish7904124(arg1)
    print("OnSubFinish7904124")
end

function Quest79041:OnSubStart7904112(arg1)
    print("OnSubStart7904112")
    actorMgr:CreateActorWithPos("Q7904112Trigger", "Actor/Gadget/Q7904112Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7904112_guide").pos, sceneData:GetDummyPoint(10, "Q7904112_guide").rot, true, false, 10)
    actorMgr:CreateActorWithPos("Q7904112Trigger2", "Actor/Gadget/Q7904112Trigger2", 70900002, 0, points.TPos_Q7904112Trigger2.pos, points.TPos_Q7904112Trigger2.rot, true, false, 10)
end

function Quest79041:OnSubFinish7904112(arg1)
    print("OnSubFinish7904112")
end

function Quest79041:OnSubStart7904113(arg1)
    print("OnSubStart7904113")
end

function Quest79041:OnSubFinish7904113(arg1)
    print("OnSubFinish7904113")
end

function Quest79041:OnSubStart7904114(arg1)
    print("OnSubStart7904114")
end

function Quest79041:OnSubFinish7904114(arg1)
    print("OnSubFinish7904114")
end

function Quest79041:OnSubStart7904115(arg1)
    print("OnSubStart7904115")
end

function Quest79041:OnSubFinish7904115(arg1)
    print("OnSubFinish7904115")
end

function Quest79041:OnSubStart7904121(arg1)
    print("OnSubStart7904121")
end

function Quest79041:OnSubFinish7904121(arg1)
    print("OnSubFinish7904121")
end

function Quest79041:OnSubStart7904120(arg1)
    print("OnSubStart7904120")
end

function Quest79041:OnSubFinish7904120(arg1)
    print("OnSubFinish7904120")
end

function Quest79041:OnSubStart7904116(arg1)
    print("OnSubStart7904116")
    this:CreateQuestNpcWithTrigger("7904116Trigger", 7904116, npcs.PaimonData.id, 1, 30)
end

function Quest79041:OnSubFinish7904116(arg1)
    print("OnSubFinish7904116")
end

function Quest79041:OnSubStart7904122(arg1)
    print("OnSubStart7904122")
    this:CreateQuestNpcWithTrigger("7904122Trigger", 7904122, npcs.PaimonData.id, 1, 30)
end

function Quest79041:OnSubFinish7904122(arg1)
    print("OnSubFinish7904122")
end

function Quest79041:OnSubStart7904123(arg1)
    print("OnSubStart7904123")
    this:CreateQuestNpcWithTrigger("7904123Trigger", 7904123, npcs.PaimonData.id, 1, 30)
end

function Quest79041:OnSubFinish7904123(arg1)
    print("OnSubFinish7904123")
end

function Quest79041:OnSubStart7904127(arg1)
    print("OnSubStart7904127")
end

function Quest79041:OnSubFinish7904127(arg1)
    print("OnSubFinish7904127")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79041:OnSubStart7904128(arg1)
    print("OnSubStart7904128")
end

function Quest79041:OnSubFinish7904128(arg1)
    print("OnSubFinish7904128")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79041:OnSubStart7904129(arg1)
    print("OnSubStart7904129")
end

function Quest79041:OnSubFinish7904129(arg1)
    print("OnSubFinish7904129")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest79041
