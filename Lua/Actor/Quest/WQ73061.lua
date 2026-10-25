require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73061 = class("Quest73061", QuestActorProxy)
Quest73061.defaultAlias = "Quest73061"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73061:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306101"] = self.OnSubStart7306101,
        ["7306102"] = self.OnSubStart7306102,
        ["7306103"] = self.OnSubStart7306103,
        ["7306104"] = self.OnSubStart7306104,
        ["7306133"] = self.OnSubStart7306133,
        ["7306105"] = self.OnSubStart7306105,
        ["7306106"] = self.OnSubStart7306106,
        ["7306108"] = self.OnSubStart7306108,
        ["7306134"] = self.OnSubStart7306134,
        ["7306132"] = self.OnSubStart7306132,
        ["7306109"] = self.OnSubStart7306109,
        ["7306110"] = self.OnSubStart7306110,
        ["7306129"] = self.OnSubStart7306129,
        ["7306128"] = self.OnSubStart7306128,
        ["7306135"] = self.OnSubStart7306135,
        ["7306111"] = self.OnSubStart7306111,
        ["7306112"] = self.OnSubStart7306112,
        ["7306113"] = self.OnSubStart7306113,
        ["7306114"] = self.OnSubStart7306114,
        ["7306130"] = self.OnSubStart7306130,
        ["7306116"] = self.OnSubStart7306116,
        ["7306137"] = self.OnSubStart7306137,
        ["7306136"] = self.OnSubStart7306136,
        ["7306115"] = self.OnSubStart7306115,
        ["7306117"] = self.OnSubStart7306117,
        ["7306141"] = self.OnSubStart7306141,
        ["7306140"] = self.OnSubStart7306140,
        ["7306139"] = self.OnSubStart7306139,
        ["7306138"] = self.OnSubStart7306138,
        ["7306118"] = self.OnSubStart7306118,
        ["7306119"] = self.OnSubStart7306119,
        ["7306120"] = self.OnSubStart7306120,
        ["7306131"] = self.OnSubStart7306131,
        ["7306121"] = self.OnSubStart7306121,
        ["7306122"] = self.OnSubStart7306122,
        ["7306123"] = self.OnSubStart7306123,
        ["7306124"] = self.OnSubStart7306124,
        ["7306107"] = self.OnSubStart7306107,
        ["7306125"] = self.OnSubStart7306125,
        ["7306127"] = self.OnSubStart7306127,
        ["7306126"] = self.OnSubStart7306126
    }
end

function Quest73061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306101"] = self.OnSubFinish7306101,
        ["7306102"] = self.OnSubFinish7306102,
        ["7306103"] = self.OnSubFinish7306103,
        ["7306104"] = self.OnSubFinish7306104,
        ["7306133"] = self.OnSubFinish7306133,
        ["7306105"] = self.OnSubFinish7306105,
        ["7306106"] = self.OnSubFinish7306106,
        ["7306108"] = self.OnSubFinish7306108,
        ["7306134"] = self.OnSubFinish7306134,
        ["7306132"] = self.OnSubFinish7306132,
        ["7306109"] = self.OnSubFinish7306109,
        ["7306110"] = self.OnSubFinish7306110,
        ["7306129"] = self.OnSubFinish7306129,
        ["7306128"] = self.OnSubFinish7306128,
        ["7306135"] = self.OnSubFinish7306135,
        ["7306111"] = self.OnSubFinish7306111,
        ["7306112"] = self.OnSubFinish7306112,
        ["7306113"] = self.OnSubFinish7306113,
        ["7306114"] = self.OnSubFinish7306114,
        ["7306130"] = self.OnSubFinish7306130,
        ["7306116"] = self.OnSubFinish7306116,
        ["7306137"] = self.OnSubFinish7306137,
        ["7306136"] = self.OnSubFinish7306136,
        ["7306115"] = self.OnSubFinish7306115,
        ["7306117"] = self.OnSubFinish7306117,
        ["7306141"] = self.OnSubFinish7306141,
        ["7306140"] = self.OnSubFinish7306140,
        ["7306139"] = self.OnSubFinish7306139,
        ["7306138"] = self.OnSubFinish7306138,
        ["7306118"] = self.OnSubFinish7306118,
        ["7306119"] = self.OnSubFinish7306119,
        ["7306120"] = self.OnSubFinish7306120,
        ["7306131"] = self.OnSubFinish7306131,
        ["7306121"] = self.OnSubFinish7306121,
        ["7306122"] = self.OnSubFinish7306122,
        ["7306123"] = self.OnSubFinish7306123,
        ["7306124"] = self.OnSubFinish7306124,
        ["7306107"] = self.OnSubFinish7306107,
        ["7306125"] = self.OnSubFinish7306125,
        ["7306127"] = self.OnSubFinish7306127,
        ["7306126"] = self.OnSubFinish7306126
    }
end

function Quest73061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73061:Start()
    print("Start")
end

function Quest73061:OnDestroy()
    print("OnDestroy")
end

function Quest73061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73061:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73061:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73061:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73061:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73061:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73061:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73061:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73061:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7306121)
    end
end

function Quest73061:OnSubStart7306101(arg1)
    print("OnSubStart7306101")
end

function Quest73061:OnSubFinish7306101(arg1)
    print("OnSubFinish7306101")
end

function Quest73061:OnSubStart7306102(arg1)
    print("OnSubStart7306102")
end

function Quest73061:OnSubFinish7306102(arg1)
    print("OnSubFinish7306102")
end

function Quest73061:OnSubStart7306103(arg1)
    print("OnSubStart7306103")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20661Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20662Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7306103Trigger", "Actor/Gadget/Q7306103Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306103_N20628").pos, sceneData:GetDummyPoint(3, "Q7306103_N20628").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306103(arg1)
    print("OnSubFinish7306103")
    self:NarratorOnlyTask(datas.Q7306105NarratorTable, nil, "")
end

function Quest73061:OnSubStart7306104(arg1)
    print("OnSubStart7306104")
    self:NpcDestroy(npcs.Npc20628Data.alias, 3)
    self:NpcDestroy(npcs.Npc20661Data.alias, 3)
    self:NpcDestroy(npcs.Npc20662Data.alias, 3)
end

function Quest73061:OnSubFinish7306104(arg1)
    print("OnSubFinish7306104")
end

function Quest73061:OnSubStart7306133(arg1)
    print("OnSubStart7306133")
    self:NpcCreate(arg1, npcs.Npc20628Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc20661Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc20662Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7306133Trigger", "Actor/Gadget/Q7306133Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306103_N20628").pos, sceneData:GetDummyPoint(3, "Q7306103_N20628").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306133(arg1)
    print("OnSubFinish7306133")
    self:NarratorOnlyTask(datas.Q7306105NarratorTable, nil, "")
end

function Quest73061:OnSubStart7306105(arg1)
    print("OnSubStart7306105")
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
end

function Quest73061:OnSubFinish7306105(arg1)
    print("OnSubFinish7306105")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 2, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20661Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20662Data.alias)
end

function Quest73061:OnSubStart7306106(arg1)
    print("OnSubStart7306106")
    self:DailyNpcSafeHideSelf(npcs.Npc4351Data.alias, 1, true)
end

function Quest73061:OnSubFinish7306106(arg1)
    print("OnSubFinish7306106")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306108(arg1)
    print("OnSubStart7306108")
    actorMgr:CreateActorWithPos("Q7306108Trigger", "Actor/Gadget/Q7306108Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306109_N20576").pos, sceneData:GetDummyPoint(3, "Q7306109_N20576").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306108(arg1)
    print("OnSubFinish7306108")
end

function Quest73061:OnSubStart7306134(arg1)
    print("OnSubStart7306134")
    actorMgr:CreateActorWithPos("Q7306134Trigger", "Actor/Gadget/Q7306134Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306109_N20576").pos, sceneData:GetDummyPoint(3, "Q7306109_N20576").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306134(arg1)
    print("OnSubFinish7306134")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306132(arg1)
    print("OnSubStart7306132")
end

function Quest73061:OnSubFinish7306132(arg1)
    print("OnSubFinish7306132")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306109(arg1)
    print("OnSubStart7306109")
end

function Quest73061:OnSubFinish7306109(arg1)
    print("OnSubFinish7306109")
end

function Quest73061:OnSubStart7306110(arg1)
    print("OnSubStart7306110")
    actorMgr:CreateActorWithPos("Q7306110Trigger", "Actor/Gadget/Q7306110Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306110_guide").pos, sceneData:GetDummyPoint(3, "Q7306110_guide").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306110(arg1)
    print("OnSubFinish7306110")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306129(arg1)
    print("OnSubStart7306129")
end

function Quest73061:OnSubFinish7306129(arg1)
    print("OnSubFinish7306129")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306128(arg1)
    print("OnSubStart7306128")
    actorMgr:CreateActorWithPos("Q7306128Trigger", "Actor/Gadget/Q7306128Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306128_guide").pos, sceneData:GetDummyPoint(3, "Q7306128_guide").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306128(arg1)
    print("OnSubFinish7306128")
end

function Quest73061:OnSubStart7306135(arg1)
    print("OnSubStart7306135")
    actorMgr:CreateActorWithPos("Q7306135Trigger", "Actor/Gadget/Q7306135Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306111_guide").pos, sceneData:GetDummyPoint(3, "Q7306111_guide").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306135(arg1)
    print("OnSubFinish7306135")
end

function Quest73061:OnSubStart7306111(arg1)
    print("OnSubStart7306111")
end

function Quest73061:OnSubFinish7306111(arg1)
    print("OnSubFinish7306111")
end

function Quest73061:OnSubStart7306112(arg1)
    print("OnSubStart7306112")
    self:CreateQuestNpc(arg1, npcs.Npc20661Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20662Data.id, 2)
    actorMgr:CreateActorWithPos("Q7306112Trigger", "Actor/Gadget/Q7306112Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306112_guide_2472").pos, sceneData:GetDummyPoint(3, "Q7306112_guide_2472").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306112(arg1)
    print("OnSubFinish7306112")
    self:NarratorOnlyTask(datas.Q7306113NarratorTable, nil, "")
end

function Quest73061:OnSubStart7306113(arg1)
    print("OnSubStart7306113")
end

function Quest73061:OnSubFinish7306113(arg1)
    print("OnSubFinish7306113")
end

function Quest73061:OnSubStart7306114(arg1)
    print("OnSubStart7306114")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20628Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20661Data.id, 3)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20662Data.id, 4)
    actorMgr:CreateActorWithPos("Q7306114Trigger", "Actor/Gadget/Q7306114Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306130_N20576").pos, sceneData:GetDummyPoint(3, "Q7306130_N20576").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306114(arg1)
    print("OnSubFinish7306114")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 2, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306130(arg1)
    print("OnSubStart7306130")
end

function Quest73061:OnSubFinish7306130(arg1)
    print("OnSubFinish7306130")
    self:NarratorOnlyTask(datas.Q7306115NarratorTable, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306116(arg1)
    print("OnSubStart7306116")
end

function Quest73061:OnSubFinish7306116(arg1)
    print("OnSubFinish7306116")
end

function Quest73061:OnSubStart7306137(arg1)
    print("OnSubStart7306137")
    actorMgr:CreateActorWithPos("Q7306137Trigger", "Actor/Gadget/Q7306137Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306119_guide").pos, sceneData:GetDummyPoint(3, "Q7306119_guide").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306137(arg1)
    print("OnSubFinish7306137")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306136(arg1)
    print("OnSubStart7306136")
end

function Quest73061:OnSubFinish7306136(arg1)
    print("OnSubFinish7306136")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306115(arg1)
    print("OnSubStart7306115")
end

function Quest73061:OnSubFinish7306115(arg1)
    print("OnSubFinish7306115")
    self:NpcDestroy(npcs.Npc20628Data.alias, 3)
    self:NpcDestroy(npcs.Npc20661Data.alias, 3)
    self:NpcDestroy(npcs.Npc20662Data.alias, 3)
end

function Quest73061:OnSubStart7306117(arg1)
    print("OnSubStart7306117")
end

function Quest73061:OnSubFinish7306117(arg1)
    print("OnSubFinish7306117")
end

function Quest73061:OnSubStart7306141(arg1)
    print("OnSubStart7306141")
end

function Quest73061:OnSubFinish7306141(arg1)
    print("OnSubFinish7306141")
end

function Quest73061:OnSubStart7306140(arg1)
    print("OnSubStart7306140")
end

function Quest73061:OnSubFinish7306140(arg1)
    print("OnSubFinish7306140")
end

function Quest73061:OnSubStart7306139(arg1)
    print("OnSubStart7306139")
end

function Quest73061:OnSubFinish7306139(arg1)
    print("OnSubFinish7306139")
end

function Quest73061:OnSubStart7306138(arg1)
    print("OnSubStart7306138")
end

function Quest73061:OnSubFinish7306138(arg1)
    print("OnSubFinish7306138")
end

function Quest73061:OnSubStart7306118(arg1)
    print("OnSubStart7306118")
end

function Quest73061:OnSubFinish7306118(arg1)
    print("OnSubFinish7306118")
end

function Quest73061:OnSubStart7306119(arg1)
    print("OnSubStart7306119")
    actorMgr:CreateActorWithPos("Q7306119Trigger", "Actor/Gadget/Q7306119Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306119_N20576").pos, sceneData:GetDummyPoint(3, "Q7306119_N20576").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306119(arg1)
    print("OnSubFinish7306119")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306120(arg1)
    print("OnSubStart7306120")
end

function Quest73061:OnSubFinish7306120(arg1)
    print("OnSubFinish7306120")
    self:SafeDestroyQuestNpc(npcs.Npc20628Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306131(arg1)
    print("OnSubStart7306131")
    actorMgr:CreateActorWithPos("Q7306131Trigger", "Actor/Gadget/Q7306131Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306131_guide").pos, sceneData:GetDummyPoint(3, "Q7306131_guide").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306131(arg1)
    print("OnSubFinish7306131")
end

function Quest73061:OnSubStart7306121(arg1)
    print("OnSubStart7306121")
    self:CreateQuestNpc(arg1, npcs.Npc20628Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20661Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20662Data.id, 3)
    actorMgr:CreateActorWithPos("Q7306121Trigger", "Actor/Gadget/Q7306121Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7306121_N20628").pos, sceneData:GetDummyPoint(3, "Q7306121_N20628").rot, true, false, 3)
end

function Quest73061:OnSubFinish7306121(arg1)
    print("OnSubFinish7306121")
end

function Quest73061:OnSubStart7306122(arg1)
    print("OnSubStart7306122")
    self:RequestInteraction(npcs.Npc20628Data.alias)
end

function Quest73061:OnSubFinish7306122(arg1)
    print("OnSubFinish7306122")
end

function Quest73061:OnSubStart7306123(arg1)
    print("OnSubStart7306123")
end

function Quest73061:OnSubFinish7306123(arg1)
    print("OnSubFinish7306123")
    self:SafeDestroyQuestNpc(npcs.Npc20628Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20661Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20662Data.alias, 3)
end

function Quest73061:OnSubStart7306124(arg1)
    print("OnSubStart7306124")
end

function Quest73061:OnSubFinish7306124(arg1)
    print("OnSubFinish7306124")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20661Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20662Data.alias)
end

function Quest73061:OnSubStart7306107(arg1)
    print("OnSubStart7306107")
end

function Quest73061:OnSubFinish7306107(arg1)
    print("OnSubFinish7306107")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 2, npcs.Npc20576Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20628Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20661Data.alias)
    self:NpcDestroyWithDither(npcs.Npc20662Data.alias, 3)
end

function Quest73061:OnSubStart7306125(arg1)
    print("OnSubStart7306125")
end

function Quest73061:OnSubFinish7306125(arg1)
    print("OnSubFinish7306125")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20576Data.id, 1, npcs.Npc20576Data.alias)
end

function Quest73061:OnSubStart7306127(arg1)
    print("OnSubStart7306127")
end

function Quest73061:OnSubFinish7306127(arg1)
    print("OnSubFinish7306127")
end

function Quest73061:OnSubStart7306126(arg1)
    print("OnSubStart7306126")
end

function Quest73061:OnSubFinish7306126(arg1)
    print("OnSubFinish7306126")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20576Data.alias)
end

return Quest73061
