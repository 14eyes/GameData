require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73055 = class("Quest73055", QuestActorProxy)
Quest73055.defaultAlias = "Quest73055"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73055:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73055:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305501"] = self.OnSubStart7305501,
        ["7305502"] = self.OnSubStart7305502,
        ["7305503"] = self.OnSubStart7305503,
        ["7305504"] = self.OnSubStart7305504,
        ["7305551"] = self.OnSubStart7305551,
        ["7305505"] = self.OnSubStart7305505,
        ["7305507"] = self.OnSubStart7305507,
        ["7305509"] = self.OnSubStart7305509,
        ["7305510"] = self.OnSubStart7305510,
        ["7305511"] = self.OnSubStart7305511,
        ["7305548"] = self.OnSubStart7305548,
        ["7305512"] = self.OnSubStart7305512,
        ["7305513"] = self.OnSubStart7305513,
        ["7305546"] = self.OnSubStart7305546,
        ["7305547"] = self.OnSubStart7305547,
        ["7305514"] = self.OnSubStart7305514,
        ["7305515"] = self.OnSubStart7305515,
        ["7305516"] = self.OnSubStart7305516,
        ["7305517"] = self.OnSubStart7305517,
        ["7305518"] = self.OnSubStart7305518,
        ["7305519"] = self.OnSubStart7305519,
        ["7305520"] = self.OnSubStart7305520,
        ["7305521"] = self.OnSubStart7305521,
        ["7305523"] = self.OnSubStart7305523,
        ["7305524"] = self.OnSubStart7305524,
        ["7305549"] = self.OnSubStart7305549,
        ["7305525"] = self.OnSubStart7305525,
        ["7305526"] = self.OnSubStart7305526,
        ["7305527"] = self.OnSubStart7305527,
        ["7305528"] = self.OnSubStart7305528,
        ["7305529"] = self.OnSubStart7305529,
        ["7305530"] = self.OnSubStart7305530,
        ["7305531"] = self.OnSubStart7305531,
        ["7305532"] = self.OnSubStart7305532,
        ["7305533"] = self.OnSubStart7305533,
        ["7305550"] = self.OnSubStart7305550,
        ["7305552"] = self.OnSubStart7305552,
        ["7305535"] = self.OnSubStart7305535,
        ["7305536"] = self.OnSubStart7305536,
        ["7305537"] = self.OnSubStart7305537,
        ["7305538"] = self.OnSubStart7305538,
        ["7305539"] = self.OnSubStart7305539,
        ["7305540"] = self.OnSubStart7305540,
        ["7305541"] = self.OnSubStart7305541,
        ["7305542"] = self.OnSubStart7305542,
        ["7305553"] = self.OnSubStart7305553,
        ["7305544"] = self.OnSubStart7305544,
        ["7305543"] = self.OnSubStart7305543,
        ["7305545"] = self.OnSubStart7305545,
        ["7305554"] = self.OnSubStart7305554,
        ["7305555"] = self.OnSubStart7305555,
        ["7305557"] = self.OnSubStart7305557,
        ["7305556"] = self.OnSubStart7305556,
        ["7305508"] = self.OnSubStart7305508,
        ["7305534"] = self.OnSubStart7305534,
        ["7305522"] = self.OnSubStart7305522,
        ["7305506"] = self.OnSubStart7305506
    }
end

function Quest73055:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305501"] = self.OnSubFinish7305501,
        ["7305502"] = self.OnSubFinish7305502,
        ["7305503"] = self.OnSubFinish7305503,
        ["7305504"] = self.OnSubFinish7305504,
        ["7305551"] = self.OnSubFinish7305551,
        ["7305505"] = self.OnSubFinish7305505,
        ["7305507"] = self.OnSubFinish7305507,
        ["7305509"] = self.OnSubFinish7305509,
        ["7305510"] = self.OnSubFinish7305510,
        ["7305511"] = self.OnSubFinish7305511,
        ["7305548"] = self.OnSubFinish7305548,
        ["7305512"] = self.OnSubFinish7305512,
        ["7305513"] = self.OnSubFinish7305513,
        ["7305546"] = self.OnSubFinish7305546,
        ["7305547"] = self.OnSubFinish7305547,
        ["7305514"] = self.OnSubFinish7305514,
        ["7305515"] = self.OnSubFinish7305515,
        ["7305516"] = self.OnSubFinish7305516,
        ["7305517"] = self.OnSubFinish7305517,
        ["7305518"] = self.OnSubFinish7305518,
        ["7305519"] = self.OnSubFinish7305519,
        ["7305520"] = self.OnSubFinish7305520,
        ["7305521"] = self.OnSubFinish7305521,
        ["7305523"] = self.OnSubFinish7305523,
        ["7305524"] = self.OnSubFinish7305524,
        ["7305549"] = self.OnSubFinish7305549,
        ["7305525"] = self.OnSubFinish7305525,
        ["7305526"] = self.OnSubFinish7305526,
        ["7305527"] = self.OnSubFinish7305527,
        ["7305528"] = self.OnSubFinish7305528,
        ["7305529"] = self.OnSubFinish7305529,
        ["7305530"] = self.OnSubFinish7305530,
        ["7305531"] = self.OnSubFinish7305531,
        ["7305532"] = self.OnSubFinish7305532,
        ["7305533"] = self.OnSubFinish7305533,
        ["7305550"] = self.OnSubFinish7305550,
        ["7305552"] = self.OnSubFinish7305552,
        ["7305535"] = self.OnSubFinish7305535,
        ["7305536"] = self.OnSubFinish7305536,
        ["7305537"] = self.OnSubFinish7305537,
        ["7305538"] = self.OnSubFinish7305538,
        ["7305539"] = self.OnSubFinish7305539,
        ["7305540"] = self.OnSubFinish7305540,
        ["7305541"] = self.OnSubFinish7305541,
        ["7305542"] = self.OnSubFinish7305542,
        ["7305553"] = self.OnSubFinish7305553,
        ["7305544"] = self.OnSubFinish7305544,
        ["7305543"] = self.OnSubFinish7305543,
        ["7305545"] = self.OnSubFinish7305545,
        ["7305554"] = self.OnSubFinish7305554,
        ["7305555"] = self.OnSubFinish7305555,
        ["7305557"] = self.OnSubFinish7305557,
        ["7305556"] = self.OnSubFinish7305556,
        ["7305508"] = self.OnSubFinish7305508,
        ["7305534"] = self.OnSubFinish7305534,
        ["7305522"] = self.OnSubFinish7305522,
        ["7305506"] = self.OnSubFinish7305506
    }
end

function Quest73055:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7305544"] = self.OnSubFailed7305544}
end

function Quest73055:Start()
    print("Start")
end

function Quest73055:OnDestroy()
    print("OnDestroy")
end

function Quest73055:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73055:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73055:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73055:NpcCreateWithBlackscreenInteractionByID(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpcById(arg3, arg1, arg2)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73055:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73055:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73055:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73055:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73055:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73055:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7305553)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7305554)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7305555)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7305556)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7305557)
    end
end

function Quest73055:OnSubStart7305501(arg1)
    print("OnSubStart7305501")
    actorMgr:CreateActorWithPos("Q7305501Trigger", "Actor/Gadget/Q7305501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305501").pos, sceneData:GetDummyPoint(3, "guide_Q7305501").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305501(arg1)
    print("OnSubFinish7305501")
end

function Quest73055:OnSubStart7305502(arg1)
    print("OnSubStart7305502")
end

function Quest73055:OnSubFinish7305502(arg1)
    print("OnSubFinish7305502")
end

function Quest73055:OnSubStart7305503(arg1)
    print("OnSubStart7305503")
    self:NpcCreateWithBlackscreenInteractionByID(npcs.Npc1702Data.id, 1, 7305503, npcs.Npc1702Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
end

function Quest73055:OnSubFinish7305503(arg1)
    print("OnSubFinish7305503")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1702Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305504(arg1)
    print("OnSubStart7305504")
    actorMgr:CreateActorWithPos("Q7305504Trigger", "Actor/Gadget/Q7305504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305504").pos, sceneData:GetDummyPoint(3, "guide_Q7305504").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305504(arg1)
    print("OnSubFinish7305504")
end

function Quest73055:OnSubStart7305551(arg1)
    print("OnSubStart7305551")
    self:NpcCreateWithBlackscreenInteractionByID(npcs.Npc20722Data.id, 1, 7305551, npcs.Npc20722Data.alias)
end

function Quest73055:OnSubFinish7305551(arg1)
    print("OnSubFinish7305551")
end

function Quest73055:OnSubStart7305505(arg1)
    print("OnSubStart7305505")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 2, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 10)
end

function Quest73055:OnSubFinish7305505(arg1)
    print("OnSubFinish7305505")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305507(arg1)
    print("OnSubStart7305507")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    actorMgr:CreateActorWithPos("Q7305507Trigger", "Actor/Gadget/Q7305507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305507").pos, sceneData:GetDummyPoint(3, "guide_Q7305507").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305507(arg1)
    print("OnSubFinish7305507")
end

function Quest73055:OnSubStart7305509(arg1)
    print("OnSubStart7305509")
end

function Quest73055:OnSubFinish7305509(arg1)
    print("OnSubFinish7305509")
end

function Quest73055:OnSubStart7305510(arg1)
    print("OnSubStart7305510")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20710Data.id, 5)
end

function Quest73055:OnSubFinish7305510(arg1)
    print("OnSubFinish7305510")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305511(arg1)
    print("OnSubStart7305511")
    actorMgr:CreateActorWithPos("Q7305511Trigger", "Actor/Gadget/Q7305511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305511").pos, sceneData:GetDummyPoint(3, "guide_Q7305511").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305511(arg1)
    print("OnSubFinish7305511")
end

function Quest73055:OnSubStart7305548(arg1)
    print("OnSubStart7305548")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20710Data.id, 1, npcs.Npc20710Data.alias)
end

function Quest73055:OnSubFinish7305548(arg1)
    print("OnSubFinish7305548")
    self:SafeDestroyQuestNpc(npcs.Npc20710Data.alias, 3)
end

function Quest73055:OnSubStart7305512(arg1)
    print("OnSubStart7305512")
end

function Quest73055:OnSubFinish7305512(arg1)
    print("OnSubFinish7305512")
end

function Quest73055:OnSubStart7305513(arg1)
    print("OnSubStart7305513")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20723Data.id, 3, npcs.Npc20723Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73055:OnSubFinish7305513(arg1)
    print("OnSubFinish7305513")
end

function Quest73055:OnSubStart7305546(arg1)
    print("OnSubStart7305546")
end

function Quest73055:OnSubFinish7305546(arg1)
    print("OnSubFinish7305546")
end

function Quest73055:OnSubStart7305547(arg1)
    print("OnSubStart7305547")
end

function Quest73055:OnSubFinish7305547(arg1)
    print("OnSubFinish7305547")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305514(arg1)
    print("OnSubStart7305514")
end

function Quest73055:OnSubFinish7305514(arg1)
    print("OnSubFinish7305514")
end

function Quest73055:OnSubStart7305515(arg1)
    print("OnSubStart7305515")
end

function Quest73055:OnSubFinish7305515(arg1)
    print("OnSubFinish7305515")
end

function Quest73055:OnSubStart7305516(arg1)
    print("OnSubStart7305516")
end

function Quest73055:OnSubFinish7305516(arg1)
    print("OnSubFinish7305516")
end

function Quest73055:OnSubStart7305517(arg1)
    print("OnSubStart7305517")
end

function Quest73055:OnSubFinish7305517(arg1)
    print("OnSubFinish7305517")
end

function Quest73055:OnSubStart7305518(arg1)
    print("OnSubStart7305518")
end

function Quest73055:OnSubFinish7305518(arg1)
    print("OnSubFinish7305518")
end

function Quest73055:OnSubStart7305519(arg1)
    print("OnSubStart7305519")
end

function Quest73055:OnSubFinish7305519(arg1)
    print("OnSubFinish7305519")
end

function Quest73055:OnSubStart7305520(arg1)
    print("OnSubStart7305520")
    self:PlayCutsceneIndex(7305520, function(arg1)
        actorUtils.FinishQuestID(false, 7305520)
    end, nil, nil, false)
end

function Quest73055:OnSubFinish7305520(arg1)
    print("OnSubFinish7305520")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.finish7305520, nil, "")
    end)
end

function Quest73055:OnSubStart7305521(arg1)
    print("OnSubStart7305521")
    actorMgr:CreateActorWithPos("Q7305521Trigger", "Actor/Gadget/Q7305521Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305521").pos, sceneData:GetDummyPoint(3, "guide_Q7305521").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305521(arg1)
    print("OnSubFinish7305521")
end

function Quest73055:OnSubStart7305523(arg1)
    print("OnSubStart7305523")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73055:OnSubFinish7305523(arg1)
    print("OnSubFinish7305523")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305524(arg1)
    print("OnSubStart7305524")
    actorMgr:CreateActorWithPos("Q7305524Trigger", "Actor/Gadget/Q7305524Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305524").pos, sceneData:GetDummyPoint(3, "guide_Q7305524").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305524(arg1)
    print("OnSubFinish7305524")
end

function Quest73055:OnSubStart7305549(arg1)
    print("OnSubStart7305549")
    actorMgr:CreateActorWithPos("Q7305549Trigger", "Actor/Gadget/Q7305549Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305549").pos, sceneData:GetDummyPoint(3, "guide_Q7305549").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305549(arg1)
    print("OnSubFinish7305549")
end

function Quest73055:OnSubStart7305525(arg1)
    print("OnSubStart7305525")
end

function Quest73055:OnSubFinish7305525(arg1)
    print("OnSubFinish7305525")
end

function Quest73055:OnSubStart7305526(arg1)
    print("OnSubStart7305526")
    actorMgr:CreateActorWithPos("Q7305526Trigger", "Actor/Gadget/Q7305526Trigger", 70900002, 0, {x = -1487.248, y = 64.038, z = 4404.533}, {x = 0.0, y = 9.0, z = 0.0}, true, false, 3)
end

function Quest73055:OnSubFinish7305526(arg1)
    print("OnSubFinish7305526")
end

function Quest73055:OnSubStart7305527(arg1)
    print("OnSubStart7305527")
end

function Quest73055:OnSubFinish7305527(arg1)
    print("OnSubFinish7305527")
end

function Quest73055:OnSubStart7305528(arg1)
    print("OnSubStart7305528")
end

function Quest73055:OnSubFinish7305528(arg1)
    print("OnSubFinish7305528")
end

function Quest73055:OnSubStart7305529(arg1)
    print("OnSubStart7305529")
end

function Quest73055:OnSubFinish7305529(arg1)
    print("OnSubFinish7305529")
end

function Quest73055:OnSubStart7305530(arg1)
    print("OnSubStart7305530")
end

function Quest73055:OnSubFinish7305530(arg1)
    print("OnSubFinish7305530")
end

function Quest73055:OnSubStart7305531(arg1)
    print("OnSubStart7305531")
end

function Quest73055:OnSubFinish7305531(arg1)
    print("OnSubFinish7305531")
end

function Quest73055:OnSubStart7305532(arg1)
    print("OnSubStart7305532")
end

function Quest73055:OnSubFinish7305532(arg1)
    print("OnSubFinish7305532")
end

function Quest73055:OnSubStart7305533(arg1)
    print("OnSubStart7305533")
    self:PlayCutsceneIndex(7305533, function(arg1)
        actorUtils.FinishQuestID(false, 7305533)
    end, nil, nil, false)
end

function Quest73055:OnSubFinish7305533(arg1)
    print("OnSubFinish7305533")
end

function Quest73055:OnSubStart7305550(arg1)
    print("OnSubStart7305550")
end

function Quest73055:OnSubFinish7305550(arg1)
    print("OnSubFinish7305550")
end

function Quest73055:OnSubStart7305552(arg1)
    print("OnSubStart7305552")
end

function Quest73055:OnSubFinish7305552(arg1)
    print("OnSubFinish7305552")
end

function Quest73055:OnSubStart7305535(arg1)
    print("OnSubStart7305535")
    actorMgr:CreateActorWithPos("Q7305535Trigger", "Actor/Gadget/Q7305535Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305535").pos, sceneData:GetDummyPoint(3, "guide_Q7305535").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305535(arg1)
    print("OnSubFinish7305535")
end

function Quest73055:OnSubStart7305536(arg1)
    print("OnSubStart7305536")
end

function Quest73055:OnSubFinish7305536(arg1)
    print("OnSubFinish7305536")
end

function Quest73055:OnSubStart7305537(arg1)
    print("OnSubStart7305537")
    actorMgr:CreateActorWithPos("Q7305537Trigger", "Actor/Gadget/Q7305537Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305537").pos, sceneData:GetDummyPoint(3, "guide_Q7305537").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305537(arg1)
    print("OnSubFinish7305537")
end

function Quest73055:OnSubStart7305538(arg1)
    print("OnSubStart7305538")
    actorMgr:CreateActorWithPos("Q7305538Trigger", "Actor/Gadget/Q7305538Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305538").pos, sceneData:GetDummyPoint(3, "guide_Q7305538").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305538(arg1)
    print("OnSubFinish7305538")
end

function Quest73055:OnSubStart7305539(arg1)
    print("OnSubStart7305539")
    actorMgr:CreateActorWithPos("Q7305539Trigger", "Actor/Gadget/Q7305539Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305539").pos, sceneData:GetDummyPoint(3, "guide_Q7305539").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305539(arg1)
    print("OnSubFinish7305539")
end

function Quest73055:OnSubStart7305540(arg1)
    print("OnSubStart7305540")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
end

function Quest73055:OnSubFinish7305540(arg1)
    print("OnSubFinish7305540")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305541(arg1)
    print("OnSubStart7305541")
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20725Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    self:SafeDestroyQuestNpc(npcs.Npc20710Data.alias, 3)
end

function Quest73055:OnSubFinish7305541(arg1)
    print("OnSubFinish7305541")
end

function Quest73055:OnSubStart7305542(arg1)
    print("OnSubStart7305542")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20723Data.id, 3, npcs.Npc20723Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc20725Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73055:OnSubFinish7305542(arg1)
    print("OnSubFinish7305542")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73055:OnSubStart7305553(arg1)
    print("OnSubStart7305553")
end

function Quest73055:OnSubFinish7305553(arg1)
    print("OnSubFinish7305553")
end

function Quest73055:OnSubStart7305544(arg1)
    print("OnSubStart7305544")
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20725Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7305544Trigger", "Actor/Gadget/Q7305544Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305544").pos, sceneData:GetDummyPoint(3, "guide_Q7305544").rot, true, false, 3)
end

function Quest73055:OnSubFinish7305544(arg1)
    print("OnSubFinish7305544")
end

function Quest73055:OnSubFailed7305544(arg1)
    print("OnSubFailed7305544")
    self:TransmitPlayerByQuestId(7305544, 1)
end

function Quest73055:OnSubStart7305543(arg1)
    print("OnSubStart7305543")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc20725Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73055:OnSubFinish7305543(arg1)
    print("OnSubFinish7305543")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20724Data.alias)
end

function Quest73055:OnSubStart7305545(arg1)
    print("OnSubStart7305545")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20722Data.id, 2, npcs.Npc20722Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20725Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc20725Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73055:OnSubFinish7305545(arg1)
    print("OnSubFinish7305545")
    self:TransmitPlayerWithTextById(arg1, 2, datas.TextmapId, 1)
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20725Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20916Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20919Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20920Data.alias, 3)
end

function Quest73055:OnSubStart7305554(arg1)
    print("OnSubStart7305554")
end

function Quest73055:OnSubFinish7305554(arg1)
    print("OnSubFinish7305554")
end

function Quest73055:OnSubStart7305555(arg1)
    print("OnSubStart7305555")
end

function Quest73055:OnSubFinish7305555(arg1)
    print("OnSubFinish7305555")
end

function Quest73055:OnSubStart7305557(arg1)
    print("OnSubStart7305557")
end

function Quest73055:OnSubFinish7305557(arg1)
    print("OnSubFinish7305557")
end

function Quest73055:OnSubStart7305556(arg1)
    print("OnSubStart7305556")
end

function Quest73055:OnSubFinish7305556(arg1)
    print("OnSubFinish7305556")
end

function Quest73055:OnSubStart7305508(arg1)
    print("OnSubStart7305508")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc4247Data.id, 5)
    self:DailyNpcSafeHideSelf(npcs.Npc4235Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("Q7305508_3Trigger", 7305508, 1702, 1, 8)
end

function Quest73055:OnSubFinish7305508(arg1)
    print("OnSubFinish7305508")
    self:SafeDestroyQuestNpc(npcs.Npc1702Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4247Data.alias, 3)
end

function Quest73055:OnSubStart7305534(arg1)
    print("OnSubStart7305534")
end

function Quest73055:OnSubFinish7305534(arg1)
    print("OnSubFinish7305534")
end

function Quest73055:OnSubStart7305522(arg1)
    print("OnSubStart7305522")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc4218Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20723Data.id, 2)
end

function Quest73055:OnSubFinish7305522(arg1)
    print("OnSubFinish7305522")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20723Data.alias)
end

function Quest73055:OnSubStart7305506(arg1)
    print("OnSubStart7305506")
end

function Quest73055:OnSubFinish7305506(arg1)
    print("OnSubFinish7305506")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:NpcDestroy(npcs.Npc20722Data.alias, 3)
    self:NpcDestroy(npcs.Npc20723Data.alias, 3)
    self:NpcDestroy(npcs.Npc20724Data.alias, 3)
end

return Quest73055
