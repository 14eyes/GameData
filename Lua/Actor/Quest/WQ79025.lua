require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79025 = class("Quest79025", QuestActorProxy)
Quest79025.defaultAlias = "Quest79025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902501"] = self.OnSubStart7902501,
        ["7902502"] = self.OnSubStart7902502,
        ["7902503"] = self.OnSubStart7902503,
        ["7902504"] = self.OnSubStart7902504,
        ["7902505"] = self.OnSubStart7902505,
        ["7902542"] = self.OnSubStart7902542,
        ["7902506"] = self.OnSubStart7902506,
        ["7902507"] = self.OnSubStart7902507,
        ["7902508"] = self.OnSubStart7902508,
        ["7902509"] = self.OnSubStart7902509,
        ["7902510"] = self.OnSubStart7902510,
        ["7902543"] = self.OnSubStart7902543,
        ["7902511"] = self.OnSubStart7902511,
        ["7902547"] = self.OnSubStart7902547,
        ["7902546"] = self.OnSubStart7902546,
        ["7902513"] = self.OnSubStart7902513,
        ["7902514"] = self.OnSubStart7902514,
        ["7902515"] = self.OnSubStart7902515,
        ["7902516"] = self.OnSubStart7902516,
        ["7902517"] = self.OnSubStart7902517,
        ["7902518"] = self.OnSubStart7902518,
        ["7902541"] = self.OnSubStart7902541,
        ["7902519"] = self.OnSubStart7902519,
        ["7902520"] = self.OnSubStart7902520,
        ["7902521"] = self.OnSubStart7902521,
        ["7902522"] = self.OnSubStart7902522,
        ["7902544"] = self.OnSubStart7902544,
        ["7902525"] = self.OnSubStart7902525,
        ["7902526"] = self.OnSubStart7902526,
        ["7902527"] = self.OnSubStart7902527,
        ["7902528"] = self.OnSubStart7902528,
        ["7902529"] = self.OnSubStart7902529,
        ["7902530"] = self.OnSubStart7902530,
        ["7902531"] = self.OnSubStart7902531,
        ["7902533"] = self.OnSubStart7902533,
        ["7902534"] = self.OnSubStart7902534,
        ["7902551"] = self.OnSubStart7902551,
        ["7902553"] = self.OnSubStart7902553,
        ["7902536"] = self.OnSubStart7902536,
        ["7902535"] = self.OnSubStart7902535,
        ["7902537"] = self.OnSubStart7902537,
        ["7902538"] = self.OnSubStart7902538,
        ["7902539"] = self.OnSubStart7902539,
        ["7902552"] = self.OnSubStart7902552,
        ["7902548"] = self.OnSubStart7902548,
        ["7902549"] = self.OnSubStart7902549,
        ["7902550"] = self.OnSubStart7902550,
        ["7902512"] = self.OnSubStart7902512,
        ["7902540"] = self.OnSubStart7902540,
        ["7902523"] = self.OnSubStart7902523,
        ["7902524"] = self.OnSubStart7902524,
        ["7902532"] = self.OnSubStart7902532,
        ["7902545"] = self.OnSubStart7902545
    }
end

function Quest79025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902501"] = self.OnSubFinish7902501,
        ["7902502"] = self.OnSubFinish7902502,
        ["7902503"] = self.OnSubFinish7902503,
        ["7902504"] = self.OnSubFinish7902504,
        ["7902505"] = self.OnSubFinish7902505,
        ["7902542"] = self.OnSubFinish7902542,
        ["7902506"] = self.OnSubFinish7902506,
        ["7902507"] = self.OnSubFinish7902507,
        ["7902508"] = self.OnSubFinish7902508,
        ["7902509"] = self.OnSubFinish7902509,
        ["7902510"] = self.OnSubFinish7902510,
        ["7902543"] = self.OnSubFinish7902543,
        ["7902511"] = self.OnSubFinish7902511,
        ["7902547"] = self.OnSubFinish7902547,
        ["7902546"] = self.OnSubFinish7902546,
        ["7902513"] = self.OnSubFinish7902513,
        ["7902514"] = self.OnSubFinish7902514,
        ["7902515"] = self.OnSubFinish7902515,
        ["7902516"] = self.OnSubFinish7902516,
        ["7902517"] = self.OnSubFinish7902517,
        ["7902518"] = self.OnSubFinish7902518,
        ["7902541"] = self.OnSubFinish7902541,
        ["7902519"] = self.OnSubFinish7902519,
        ["7902520"] = self.OnSubFinish7902520,
        ["7902521"] = self.OnSubFinish7902521,
        ["7902522"] = self.OnSubFinish7902522,
        ["7902544"] = self.OnSubFinish7902544,
        ["7902525"] = self.OnSubFinish7902525,
        ["7902526"] = self.OnSubFinish7902526,
        ["7902527"] = self.OnSubFinish7902527,
        ["7902528"] = self.OnSubFinish7902528,
        ["7902529"] = self.OnSubFinish7902529,
        ["7902530"] = self.OnSubFinish7902530,
        ["7902531"] = self.OnSubFinish7902531,
        ["7902533"] = self.OnSubFinish7902533,
        ["7902534"] = self.OnSubFinish7902534,
        ["7902551"] = self.OnSubFinish7902551,
        ["7902553"] = self.OnSubFinish7902553,
        ["7902536"] = self.OnSubFinish7902536,
        ["7902535"] = self.OnSubFinish7902535,
        ["7902537"] = self.OnSubFinish7902537,
        ["7902538"] = self.OnSubFinish7902538,
        ["7902539"] = self.OnSubFinish7902539,
        ["7902552"] = self.OnSubFinish7902552,
        ["7902548"] = self.OnSubFinish7902548,
        ["7902549"] = self.OnSubFinish7902549,
        ["7902550"] = self.OnSubFinish7902550,
        ["7902512"] = self.OnSubFinish7902512,
        ["7902540"] = self.OnSubFinish7902540,
        ["7902523"] = self.OnSubFinish7902523,
        ["7902524"] = self.OnSubFinish7902524,
        ["7902532"] = self.OnSubFinish7902532,
        ["7902545"] = self.OnSubFinish7902545
    }
end

function Quest79025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79025:Start()
    print("Start")
end

function Quest79025:OnDestroy()
    print("OnDestroy")
end

function Quest79025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79025:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    self:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest79025:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest79025:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79025:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79025:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest79025:OnSubStart7902501(arg1)
    print("OnSubStart7902501")
    self:SafeDestroyQuestNpc(npcs.Npc20614Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc20734Data.alias, 9)
end

function Quest79025:OnSubFinish7902501(arg1)
    print("OnSubFinish7902501")
end

function Quest79025:OnSubStart7902502(arg1)
    print("OnSubStart7902502")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
end

function Quest79025:OnSubFinish7902502(arg1)
    print("OnSubFinish7902502")
    self:CreateQuestNpc(arg1, npcs.Npc20734Data.id, 2)
end

function Quest79025:OnSubStart7902503(arg1)
    print("OnSubStart7902503")
end

function Quest79025:OnSubFinish7902503(arg1)
    print("OnSubFinish7902503")
end

function Quest79025:OnSubStart7902504(arg1)
    print("OnSubStart7902504")
    self:CreateQuestNpcFaceToPlayer(7902504, npcs.PaimonData.id, 1.5)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest79025:OnSubFinish7902504(arg1)
    print("OnSubFinish7902504")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79025:OnSubStart7902505(arg1)
    print("OnSubStart7902505")
end

function Quest79025:OnSubFinish7902505(arg1)
    print("OnSubFinish7902505")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
end

function Quest79025:OnSubStart7902542(arg1)
    print("OnSubStart7902542")
    actorMgr:CreateActorWithPos("Q7902542Trigger6", "Actor/Gadget/Q7902542Trigger6", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902504").pos, sceneData:GetDummyPoint(9, "guide_Q7902504").rot, true, false, 9)
    self:NpcDestroy(npcs.Npc20734Data.alias, 9)
end

function Quest79025:OnSubFinish7902542(arg1)
    print("OnSubFinish7902542")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20614Data.id, 1)
end

function Quest79025:OnSubStart7902506(arg1)
    print("OnSubStart7902506")
    self:SafeDestroyQuestNpc(npcs.Npc20641Data.alias, 9)
end

function Quest79025:OnSubFinish7902506(arg1)
    print("OnSubFinish7902506")
end

function Quest79025:OnSubStart7902507(arg1)
    print("OnSubStart7902507")
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 1)
    actorMgr:CreateActorWithPos("Q7902507Trigger", "Actor/Gadget/Q7902507Trigger", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902507").pos, sceneData:GetDummyPoint(9, "guide_Q7902507").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902507(arg1)
    print("OnSubFinish7902507")
end

function Quest79025:OnSubStart7902508(arg1)
    print("OnSubStart7902508")
    self:CreateQuestNpc(arg1, npcs.Npc20734Data.id, 1)
end

function Quest79025:OnSubFinish7902508(arg1)
    print("OnSubFinish7902508")
end

function Quest79025:OnSubStart7902509(arg1)
    print("OnSubStart7902509")
end

function Quest79025:OnSubFinish7902509(arg1)
    print("OnSubFinish7902509")
end

function Quest79025:OnSubStart7902510(arg1)
    print("OnSubStart7902510")
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 1)
end

function Quest79025:OnSubFinish7902510(arg1)
    print("OnSubFinish7902510")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902543(arg1)
    print("OnSubStart7902543")
    actorMgr:CreateActorWithPos("Q7902543Trigger7", "Actor/Gadget/Q7902543Trigger7", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902504").pos, sceneData:GetDummyPoint(9, "guide_Q7902504").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902543(arg1)
    print("OnSubFinish7902543")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 1)
end

function Quest79025:OnSubStart7902511(arg1)
    print("OnSubStart7902511")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902511(arg1)
    print("OnSubFinish7902511")
    self:SafeDestroyQuestNpc(npcs.Npc20734Data.alias, 9)
end

function Quest79025:OnSubStart7902547(arg1)
    print("OnSubStart7902547")
end

function Quest79025:OnSubFinish7902547(arg1)
    print("OnSubFinish7902547")
end

function Quest79025:OnSubStart7902546(arg1)
    print("OnSubStart7902546")
    self:CreateQuestNpc(arg1, npcs.Npc20734Data.id, 1)
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Npc20614Data.alias)
    end)
end

function Quest79025:OnSubFinish7902546(arg1)
    print("OnSubFinish7902546")
end

function Quest79025:OnSubStart7902513(arg1)
    print("OnSubStart7902513")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
    actorMgr:CreateActorWithPos("Q7902513Trigger1", "Actor/Gadget/Q7902513Trigger1", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902513").pos, sceneData:GetDummyPoint(9, "guide_Q7902513").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902513(arg1)
    print("OnSubFinish7902513")
end

function Quest79025:OnSubStart7902514(arg1)
    print("OnSubStart7902514")
end

function Quest79025:OnSubFinish7902514(arg1)
    print("OnSubFinish7902514")
end

function Quest79025:OnSubStart7902515(arg1)
    print("OnSubStart7902515")
end

function Quest79025:OnSubFinish7902515(arg1)
    print("OnSubFinish7902515")
end

function Quest79025:OnSubStart7902516(arg1)
    print("OnSubStart7902516")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902516(arg1)
    print("OnSubFinish7902516")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902517(arg1)
    print("OnSubStart7902517")
end

function Quest79025:OnSubFinish7902517(arg1)
    print("OnSubFinish7902517")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubStart7902518(arg1)
    print("OnSubStart7902518")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902518(arg1)
    print("OnSubFinish7902518")
end

function Quest79025:OnSubStart7902541(arg1)
    print("OnSubStart7902541")
    self:RequestInteraction(npcs.Npc20614Data.alias)
    self:NpcCreate(arg1, 20641, 2)
end

function Quest79025:OnSubFinish7902541(arg1)
    print("OnSubFinish7902541")
end

function Quest79025:OnSubStart7902519(arg1)
    print("OnSubStart7902519")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
    actorMgr:CreateActorWithPos("Q7902519Trigger2", "Actor/Gadget/Q7902519Trigger2", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902519").pos, sceneData:GetDummyPoint(9, "guide_Q7902519").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902519(arg1)
    print("OnSubFinish7902519")
end

function Quest79025:OnSubStart7902520(arg1)
    print("OnSubStart7902520")
end

function Quest79025:OnSubFinish7902520(arg1)
    print("OnSubFinish7902520")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902521(arg1)
    print("OnSubStart7902521")
end

function Quest79025:OnSubFinish7902521(arg1)
    print("OnSubFinish7902521")
    self:NpcCreate(arg1, npcs.Npc20614Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubStart7902522(arg1)
    print("OnSubStart7902522")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902522(arg1)
    print("OnSubFinish7902522")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902544(arg1)
    print("OnSubStart7902544")
    actorMgr:CreateActorWithPos("Q7902544Trigger8", "Actor/Gadget/Q7902544Trigger8", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902504").pos, sceneData:GetDummyPoint(9, "guide_Q7902504").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902544(arg1)
    print("OnSubFinish7902544")
    self:NpcDestroy(npcs.Npc20734Data.alias, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubStart7902525(arg1)
    print("OnSubStart7902525")
end

function Quest79025:OnSubFinish7902525(arg1)
    print("OnSubFinish7902525")
    self:CreateQuestNpc(arg1, npcs.Npc20734Data.id, 1)
end

function Quest79025:OnSubStart7902526(arg1)
    print("OnSubStart7902526")
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Npc20614Data.alias)
    end)
end

function Quest79025:OnSubFinish7902526(arg1)
    print("OnSubFinish7902526")
end

function Quest79025:OnSubStart7902527(arg1)
    print("OnSubStart7902527")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
    actorMgr:CreateActorWithPos("Q7902527Trigger3", "Actor/Gadget/Q7902527Trigger3", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902527_guide").pos, sceneData:GetDummyPoint(9, "Q7902527_guide").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902527(arg1)
    print("OnSubFinish7902527")
end

function Quest79025:OnSubStart7902528(arg1)
    print("OnSubStart7902528")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902528(arg1)
    print("OnSubFinish7902528")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902529(arg1)
    print("OnSubStart7902529")
end

function Quest79025:OnSubFinish7902529(arg1)
    print("OnSubFinish7902529")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 1)
end

function Quest79025:OnSubStart7902530(arg1)
    print("OnSubStart7902530")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902530(arg1)
    print("OnSubFinish7902530")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902531(arg1)
    print("OnSubStart7902531")
    actorMgr:CreateActorWithPos("Q7902531Trigger4", "Actor/Gadget/Q7902531Trigger4", 70900002, 0, sceneData:GetDummyPoint(9, "Q7902531_guide").pos, sceneData:GetDummyPoint(9, "Q7902531_guide").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902531(arg1)
    print("OnSubFinish7902531")
end

function Quest79025:OnSubStart7902533(arg1)
    print("OnSubStart7902533")
end

function Quest79025:OnSubFinish7902533(arg1)
    print("OnSubFinish7902533")
    self:NpcCreate(arg1, npcs.Npc20614Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubStart7902534(arg1)
    print("OnSubStart7902534")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902534(arg1)
    print("OnSubFinish7902534")
    self:SafeDestroyQuestNpc(npcs.Npc20734Data.alias, 9)
end

function Quest79025:OnSubStart7902551(arg1)
    print("OnSubStart7902551")
end

function Quest79025:OnSubFinish7902551(arg1)
    print("OnSubFinish7902551")
end

function Quest79025:OnSubStart7902553(arg1)
    print("OnSubStart7902553")
    actorMgr:CreateActorWithPos("Q7902553Trigger10", "Actor/Gadget/Q7902553Trigger10", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902504").pos, sceneData:GetDummyPoint(9, "guide_Q7902504").rot, true, false, 9)
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest79025:OnSubFinish7902553(arg1)
    print("OnSubFinish7902553")
    self:CreateQuestNpc(arg1, npcs.Npc20614Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubStart7902536(arg1)
    print("OnSubStart7902536")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902536(arg1)
    print("OnSubFinish7902536")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
end

function Quest79025:OnSubStart7902535(arg1)
    print("OnSubStart7902535")
    self:RequestInteraction(npcs.Npc20614Data.alias)
end

function Quest79025:OnSubFinish7902535(arg1)
    print("OnSubFinish7902535")
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20614Data.alias)
    self:NpcDestroyWithBlackscreen(9, npcs.Npc20641Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20734Data.alias, 9)
end

function Quest79025:OnSubStart7902537(arg1)
    print("OnSubStart7902537")
    actorMgr:CreateActorWithPos("Q7902537Trigger5", "Actor/Gadget/Q7902537Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q7902537_guide").pos, sceneData:GetDummyPoint(3, "Q7902537_guide").rot, true, false, 3)
end

function Quest79025:OnSubFinish7902537(arg1)
    print("OnSubFinish7902537")
end

function Quest79025:OnSubStart7902538(arg1)
    print("OnSubStart7902538")
    self:CreateQuestNpcWithTriggerBlack("Q7902538", 7902538, npcs.Npc20614Data.id, 1, 5, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20641Data.id, 2)
end

function Quest79025:OnSubFinish7902538(arg1)
    print("OnSubFinish7902538")
end

function Quest79025:OnSubStart7902539(arg1)
    print("OnSubStart7902539")
    self:CreateQuestNpc(arg1, npcs.NPC1512Data.id, 1)
end

function Quest79025:OnSubFinish7902539(arg1)
    print("OnSubFinish7902539")
    self:NpcDestroyWithBlackscreen(3, npcs.NPC1512Data.alias)
end

function Quest79025:OnSubStart7902552(arg1)
    print("OnSubStart7902552")
end

function Quest79025:OnSubFinish7902552(arg1)
    print("OnSubFinish7902552")
end

function Quest79025:OnSubStart7902548(arg1)
    print("OnSubStart7902548")
end

function Quest79025:OnSubFinish7902548(arg1)
    print("OnSubFinish7902548")
end

function Quest79025:OnSubStart7902549(arg1)
    print("OnSubStart7902549")
    self:CreateQuestNpcFaceToPlayer(7902549, npcs.PaimonData.id, 1.5)
end

function Quest79025:OnSubFinish7902549(arg1)
    print("OnSubFinish7902549")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79025:OnSubStart7902550(arg1)
    print("OnSubStart7902550")
    self:CreateQuestNpcFaceToPlayer(7902550, npcs.PaimonData.id, 1.5)
end

function Quest79025:OnSubFinish7902550(arg1)
    print("OnSubFinish7902550")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79025:OnSubStart7902512(arg1)
    print("OnSubStart7902512")
end

function Quest79025:OnSubFinish7902512(arg1)
    print("OnSubFinish7902512")
end

function Quest79025:OnSubStart7902540(arg1)
    print("OnSubStart7902540")
end

function Quest79025:OnSubFinish7902540(arg1)
    print("OnSubFinish7902540")
end

function Quest79025:OnSubStart7902523(arg1)
    print("OnSubStart7902523")
end

function Quest79025:OnSubFinish7902523(arg1)
    print("OnSubFinish7902523")
end

function Quest79025:OnSubStart7902524(arg1)
    print("OnSubStart7902524")
end

function Quest79025:OnSubFinish7902524(arg1)
    print("OnSubFinish7902524")
end

function Quest79025:OnSubStart7902532(arg1)
    print("OnSubStart7902532")
end

function Quest79025:OnSubFinish7902532(arg1)
    print("OnSubFinish7902532")
end

function Quest79025:OnSubStart7902545(arg1)
    print("OnSubStart7902545")
    actorMgr:CreateActorWithPos("Q7902545Trigger8", "Actor/Gadget/Q7902545Trigger8", 70900002, 0, sceneData:GetDummyPoint(9, "guide_Q7902511").pos, sceneData:GetDummyPoint(9, "guide_Q7902511").rot, true, false, 9)
end

function Quest79025:OnSubFinish7902545(arg1)
    print("OnSubFinish7902545")
    self:SafeDestroyQuestNpc(npcs.Npc20614Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc20641Data.alias, 9)
end

return Quest79025
