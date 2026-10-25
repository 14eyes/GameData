require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73281 = class("Quest73281", QuestActorProxy)
Quest73281.defaultAlias = "Quest73281"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73281:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73281:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7328126"] = self.OnSubStart7328126,
        ["7328101"] = self.OnSubStart7328101,
        ["7328128"] = self.OnSubStart7328128,
        ["7328104"] = self.OnSubStart7328104,
        ["7328129"] = self.OnSubStart7328129,
        ["7328140"] = self.OnSubStart7328140,
        ["7328132"] = self.OnSubStart7328132,
        ["7328105"] = self.OnSubStart7328105,
        ["7328106"] = self.OnSubStart7328106,
        ["7328108"] = self.OnSubStart7328108,
        ["7328127"] = self.OnSubStart7328127,
        ["7328109"] = self.OnSubStart7328109,
        ["7328107"] = self.OnSubStart7328107,
        ["7328110"] = self.OnSubStart7328110,
        ["7328134"] = self.OnSubStart7328134,
        ["7328138"] = self.OnSubStart7328138,
        ["7328111"] = self.OnSubStart7328111,
        ["7328112"] = self.OnSubStart7328112,
        ["7328113"] = self.OnSubStart7328113,
        ["7328115"] = self.OnSubStart7328115,
        ["7328116"] = self.OnSubStart7328116,
        ["7328114"] = self.OnSubStart7328114,
        ["7328117"] = self.OnSubStart7328117,
        ["7328139"] = self.OnSubStart7328139,
        ["7328118"] = self.OnSubStart7328118,
        ["7328119"] = self.OnSubStart7328119,
        ["7328120"] = self.OnSubStart7328120,
        ["7328135"] = self.OnSubStart7328135,
        ["7328121"] = self.OnSubStart7328121,
        ["7328122"] = self.OnSubStart7328122,
        ["7328123"] = self.OnSubStart7328123,
        ["7328124"] = self.OnSubStart7328124,
        ["7328141"] = self.OnSubStart7328141,
        ["7328125"] = self.OnSubStart7328125,
        ["7328103"] = self.OnSubStart7328103,
        ["7328130"] = self.OnSubStart7328130,
        ["7328131"] = self.OnSubStart7328131,
        ["7328133"] = self.OnSubStart7328133,
        ["7328136"] = self.OnSubStart7328136,
        ["7328137"] = self.OnSubStart7328137,
        ["7328102"] = self.OnSubStart7328102
    }
end

function Quest73281:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7328126"] = self.OnSubFinish7328126,
        ["7328101"] = self.OnSubFinish7328101,
        ["7328128"] = self.OnSubFinish7328128,
        ["7328104"] = self.OnSubFinish7328104,
        ["7328129"] = self.OnSubFinish7328129,
        ["7328140"] = self.OnSubFinish7328140,
        ["7328132"] = self.OnSubFinish7328132,
        ["7328105"] = self.OnSubFinish7328105,
        ["7328106"] = self.OnSubFinish7328106,
        ["7328108"] = self.OnSubFinish7328108,
        ["7328127"] = self.OnSubFinish7328127,
        ["7328109"] = self.OnSubFinish7328109,
        ["7328107"] = self.OnSubFinish7328107,
        ["7328110"] = self.OnSubFinish7328110,
        ["7328134"] = self.OnSubFinish7328134,
        ["7328138"] = self.OnSubFinish7328138,
        ["7328111"] = self.OnSubFinish7328111,
        ["7328112"] = self.OnSubFinish7328112,
        ["7328113"] = self.OnSubFinish7328113,
        ["7328115"] = self.OnSubFinish7328115,
        ["7328116"] = self.OnSubFinish7328116,
        ["7328114"] = self.OnSubFinish7328114,
        ["7328117"] = self.OnSubFinish7328117,
        ["7328139"] = self.OnSubFinish7328139,
        ["7328118"] = self.OnSubFinish7328118,
        ["7328119"] = self.OnSubFinish7328119,
        ["7328120"] = self.OnSubFinish7328120,
        ["7328135"] = self.OnSubFinish7328135,
        ["7328121"] = self.OnSubFinish7328121,
        ["7328122"] = self.OnSubFinish7328122,
        ["7328123"] = self.OnSubFinish7328123,
        ["7328124"] = self.OnSubFinish7328124,
        ["7328141"] = self.OnSubFinish7328141,
        ["7328125"] = self.OnSubFinish7328125,
        ["7328103"] = self.OnSubFinish7328103,
        ["7328130"] = self.OnSubFinish7328130,
        ["7328131"] = self.OnSubFinish7328131,
        ["7328133"] = self.OnSubFinish7328133,
        ["7328136"] = self.OnSubFinish7328136,
        ["7328137"] = self.OnSubFinish7328137,
        ["7328102"] = self.OnSubFinish7328102
    }
end

function Quest73281:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73281:Start()
    print("Start")
end

function Quest73281:OnDestroy()
    print("OnDestroy")
end

function Quest73281:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73281:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73281:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73281:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73281:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73281:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73281:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73281:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeOnInteraction")
    if arg1 == 11 then
        self:SetQuestVarByMainId(0, 1)
    elseif arg1 == 12 then
        self:SetQuestVarByMainId(0, 2)
    elseif arg1 == 21 then
        self:SetQuestVarByMainId(1, 1)
    elseif arg1 == 22 then
        self:SetQuestVarByMainId(1, 2)
    elseif arg1 == 31 then
        self:SetQuestVarByMainId(3, 1)
    elseif arg1 == 32 then
        self:SetQuestVarByMainId(3, 2)
    elseif arg1 == 41 then
        self:SetQuestVarByMainId(4, 1)
    elseif arg1 == 42 then
        self:SetQuestVarByMainId(4, 2)
    end
end

function Quest73281:OnSubStart7328126(arg1)
    print("OnSubStart7328126")
    this:CreateQuestNpc(arg1, npcs.Npc4292Data.id, 1)
end

function Quest73281:OnSubFinish7328126(arg1)
    print("OnSubFinish7328126")
end

function Quest73281:OnSubStart7328101(arg1)
    print("OnSubStart7328101")
    this:CreateQuestNpc(arg1, npcs.Npc20842Data.id, 1)
end

function Quest73281:OnSubFinish7328101(arg1)
    print("OnSubFinish7328101")
end

function Quest73281:OnSubStart7328128(arg1)
    print("OnSubStart7328128")
end

function Quest73281:OnSubFinish7328128(arg1)
    print("OnSubFinish7328128")
    this:NarratorOnlyTaskByData(datas.NarratorWithId04)
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328104(arg1)
    print("OnSubStart7328104")
    actorMgr:CreateActorWithPos("Q7328104_EnterTrigger", "Actor/Gadget/Q7328104_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328104_guide").pos, sceneData:GetDummyPoint(3, "Q7328104_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328104(arg1)
    print("OnSubFinish7328104")
end

function Quest73281:OnSubStart7328129(arg1)
    print("OnSubStart7328129")
end

function Quest73281:OnSubFinish7328129(arg1)
    print("OnSubFinish7328129")
    this:CallDelay(11.5, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId29)
    end)
end

function Quest73281:OnSubStart7328140(arg1)
    print("OnSubStart7328140")
end

function Quest73281:OnSubFinish7328140(arg1)
    print("OnSubFinish7328140")
end

function Quest73281:OnSubStart7328132(arg1)
    print("OnSubStart7328132")
    actorMgr:CreateActorWithPos("Q7328132_EnterTrigger", "Actor/Gadget/Q7328132_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328132_guide").pos, sceneData:GetDummyPoint(3, "Q7328132_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328132(arg1)
    print("OnSubFinish7328132")
    this:ClearNarratorTask()
end

function Quest73281:OnSubStart7328105(arg1)
    print("OnSubStart7328105")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc20842Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20842Data.alias)
    end)
end

function Quest73281:OnSubFinish7328105(arg1)
    print("OnSubFinish7328105")
    this:NarratorOnlyTaskByData(datas.NarratorWithId05)
end

function Quest73281:OnSubStart7328106(arg1)
    print("OnSubStart7328106")
end

function Quest73281:OnSubFinish7328106(arg1)
    print("OnSubFinish7328106")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328108(arg1)
    print("OnSubStart7328108")
    actorMgr:CreateActorWithPos("Q7328108_EnterTrigger", "Actor/Gadget/Q7328108_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328108_guide").pos, sceneData:GetDummyPoint(3, "Q7328108_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328108(arg1)
    print("OnSubFinish7328108")
end

function Quest73281:OnSubStart7328127(arg1)
    print("OnSubStart7328127")
end

function Quest73281:OnSubFinish7328127(arg1)
    print("OnSubFinish7328127")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20842Data.alias)
end

function Quest73281:OnSubStart7328109(arg1)
    print("OnSubStart7328109")
end

function Quest73281:OnSubFinish7328109(arg1)
    print("OnSubFinish7328109")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest73281:OnSubStart7328107(arg1)
    print("OnSubStart7328107")
end

function Quest73281:OnSubFinish7328107(arg1)
    print("OnSubFinish7328107")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest73281:OnSubStart7328110(arg1)
    print("OnSubStart7328110")
    this:CreateQuestNpc(arg1, npcs.Npc20842Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20842Data.alias)
    end)
end

function Quest73281:OnSubFinish7328110(arg1)
    print("OnSubFinish7328110")
    this:RequestInteraction(npcs.Npc20842Data.alias)
end

function Quest73281:OnSubStart7328134(arg1)
    print("OnSubStart7328134")
end

function Quest73281:OnSubFinish7328134(arg1)
    print("OnSubFinish7328134")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
    globalActor:ChangeDay24Time(8, false)
end

function Quest73281:OnSubStart7328138(arg1)
    print("OnSubStart7328138")
    actorMgr:CreateActorWithPos("Q7328138_EnterTriggerA", "Actor/Gadget/Q7328138_EnterTriggerA", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328138_guide").pos, sceneData:GetDummyPoint(3, "Q7328138_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7328138_EnterTriggerB", "Actor/Gadget/Q7328138_EnterTriggerB", 70900002, 0, {x = -715.527, y = 115.339, z = 4806.918}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73281:OnSubFinish7328138(arg1)
    print("OnSubFinish7328138")
    this:ActorDestroy("Q7328138_EnterTriggerB")
    this:ActorDestroy("Q7328138_EnterTriggerA")
    this:NarratorOnlyTaskByData(datas.NarratorWithId34)
end

function Quest73281:OnSubStart7328111(arg1)
    print("OnSubStart7328111")
    actorMgr:CreateActorWithPos("Q7328111_EnterTrigger", "Actor/Gadget/Q7328111_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328111_guide").pos, sceneData:GetDummyPoint(3, "Q7328111_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328111(arg1)
    print("OnSubFinish7328111")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc20842Data.id, 1)
end

function Quest73281:OnSubStart7328112(arg1)
    print("OnSubStart7328112")
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20842Data.alias)
        this:ClearNarratorTask()
    end)
end

function Quest73281:OnSubFinish7328112(arg1)
    print("OnSubFinish7328112")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328113(arg1)
    print("OnSubStart7328113")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20842Data.id, 1)
end

function Quest73281:OnSubFinish7328113(arg1)
    print("OnSubFinish7328113")
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328115(arg1)
    print("OnSubStart7328115")
end

function Quest73281:OnSubFinish7328115(arg1)
    print("OnSubFinish7328115")
end

function Quest73281:OnSubStart7328116(arg1)
    print("OnSubStart7328116")
end

function Quest73281:OnSubFinish7328116(arg1)
    print("OnSubFinish7328116")
end

function Quest73281:OnSubStart7328114(arg1)
    print("OnSubStart7328114")
end

function Quest73281:OnSubFinish7328114(arg1)
    print("OnSubFinish7328114")
end

function Quest73281:OnSubStart7328117(arg1)
    print("OnSubStart7328117")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc20842Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20842Data.alias)
    end)
end

function Quest73281:OnSubFinish7328117(arg1)
    print("OnSubFinish7328117")
    this:NarratorOnlyTaskByData(datas.NarratorWithId18)
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328139(arg1)
    print("OnSubStart7328139")
    actorMgr:CreateActorWithPos("Q7328139_EnterTrigger", "Actor/Gadget/Q7328139_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328139_guide").pos, sceneData:GetDummyPoint(3, "Q7328139_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328139(arg1)
    print("OnSubFinish7328139")
end

function Quest73281:OnSubStart7328118(arg1)
    print("OnSubStart7328118")
    actorMgr:CreateActorWithPos("Q7328118_EnterTrigger", "Actor/Gadget/Q7328118_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328118_guide").pos, sceneData:GetDummyPoint(3, "Q7328118_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328118(arg1)
    print("OnSubFinish7328118")
end

function Quest73281:OnSubStart7328119(arg1)
    print("OnSubStart7328119")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc20842Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20842Data.alias)
        this:ClearNarratorTask()
    end)
end

function Quest73281:OnSubFinish7328119(arg1)
    print("OnSubFinish7328119")
end

function Quest73281:OnSubStart7328120(arg1)
    print("OnSubStart7328120")
    this:GetQuestNpcActor(npcs.Npc20842Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
end

function Quest73281:OnSubFinish7328120(arg1)
    print("OnSubFinish7328120")
end

function Quest73281:OnSubStart7328135(arg1)
    print("OnSubStart7328135")
    this:RequestInteraction(npcs.Npc20842Data.alias)
end

function Quest73281:OnSubFinish7328135(arg1)
    print("OnSubFinish7328135")
end

function Quest73281:OnSubStart7328121(arg1)
    print("OnSubStart7328121")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7328121, function(arg1)
            actorUtils.FinishQuestID(false, 7328121)
        end, nil, nil, false)
    end)
end

function Quest73281:OnSubFinish7328121(arg1)
    print("OnSubFinish7328121")
end

function Quest73281:OnSubStart7328122(arg1)
    print("OnSubStart7328122")
end

function Quest73281:OnSubFinish7328122(arg1)
    print("OnSubFinish7328122")
end

function Quest73281:OnSubStart7328123(arg1)
    print("OnSubStart7328123")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7328123, function(arg1)
            actorUtils.FinishQuestID(false, 7328123)
        end, nil, nil, false)
    end)
end

function Quest73281:OnSubFinish7328123(arg1)
    print("OnSubFinish7328123")
end

function Quest73281:OnSubStart7328124(arg1)
    print("OnSubStart7328124")
    this:RequestInteraction(npcs.Npc20842Data.alias)
end

function Quest73281:OnSubFinish7328124(arg1)
    print("OnSubFinish7328124")
    this:NarratorOnlyTaskByData(datas.NarratorWithId25)
    this:SafeDestroyQuestNpc(npcs.Npc20842Data.alias, 3)
end

function Quest73281:OnSubStart7328141(arg1)
    print("OnSubStart7328141")
end

function Quest73281:OnSubFinish7328141(arg1)
    print("OnSubFinish7328141")
    this:ClearNarratorTask()
end

function Quest73281:OnSubStart7328125(arg1)
    print("OnSubStart7328125")
end

function Quest73281:OnSubFinish7328125(arg1)
    print("OnSubFinish7328125")
end

function Quest73281:OnSubStart7328103(arg1)
    print("OnSubStart7328103")
end

function Quest73281:OnSubFinish7328103(arg1)
    print("OnSubFinish7328103")
end

function Quest73281:OnSubStart7328130(arg1)
    print("OnSubStart7328130")
end

function Quest73281:OnSubFinish7328130(arg1)
    print("OnSubFinish7328130")
end

function Quest73281:OnSubStart7328131(arg1)
    print("OnSubStart7328131")
    this:ClearNarratorTask()
end

function Quest73281:OnSubFinish7328131(arg1)
    print("OnSubFinish7328131")
end

function Quest73281:OnSubStart7328133(arg1)
    print("OnSubStart7328133")
end

function Quest73281:OnSubFinish7328133(arg1)
    print("OnSubFinish7328133")
end

function Quest73281:OnSubStart7328136(arg1)
    print("OnSubStart7328136")
    actorMgr:CreateActorWithPos("Q7328132_EnterTrigger", "Actor/Gadget/Q7328132_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328132_guide").pos, sceneData:GetDummyPoint(3, "Q7328132_guide").rot, true, false, 3)
end

function Quest73281:OnSubFinish7328136(arg1)
    print("OnSubFinish7328136")
end

function Quest73281:OnSubStart7328137(arg1)
    print("OnSubStart7328137")
end

function Quest73281:OnSubFinish7328137(arg1)
    print("OnSubFinish7328137")
    this:ClearNarratorTask()
    this:CallDelay(0.3, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId37)
    end)
end

function Quest73281:OnSubStart7328102(arg1)
    print("OnSubStart7328102")
end

function Quest73281:OnSubFinish7328102(arg1)
    print("OnSubFinish7328102")
end

return Quest73281
