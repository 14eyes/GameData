require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8012 = class("Quest8012", QuestActorProxy)
Quest8012.defaultAlias = "Quest8012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801221"] = self.OnSubStart801221,
        ["801214"] = self.OnSubStart801214,
        ["801222"] = self.OnSubStart801222,
        ["801201"] = self.OnSubStart801201,
        ["801224"] = self.OnSubStart801224,
        ["801202"] = self.OnSubStart801202,
        ["801203"] = self.OnSubStart801203,
        ["801204"] = self.OnSubStart801204,
        ["801215"] = self.OnSubStart801215,
        ["801205"] = self.OnSubStart801205,
        ["801216"] = self.OnSubStart801216,
        ["801206"] = self.OnSubStart801206,
        ["801217"] = self.OnSubStart801217,
        ["801207"] = self.OnSubStart801207,
        ["801220"] = self.OnSubStart801220,
        ["801210"] = self.OnSubStart801210,
        ["801223"] = self.OnSubStart801223,
        ["801211"] = self.OnSubStart801211,
        ["801213"] = self.OnSubStart801213,
        ["801212"] = self.OnSubStart801212,
        ["801218"] = self.OnSubStart801218,
        ["801208"] = self.OnSubStart801208,
        ["801219"] = self.OnSubStart801219,
        ["801209"] = self.OnSubStart801209
    }
end

function Quest8012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801221"] = self.OnSubFinish801221,
        ["801214"] = self.OnSubFinish801214,
        ["801222"] = self.OnSubFinish801222,
        ["801201"] = self.OnSubFinish801201,
        ["801224"] = self.OnSubFinish801224,
        ["801202"] = self.OnSubFinish801202,
        ["801203"] = self.OnSubFinish801203,
        ["801204"] = self.OnSubFinish801204,
        ["801215"] = self.OnSubFinish801215,
        ["801205"] = self.OnSubFinish801205,
        ["801216"] = self.OnSubFinish801216,
        ["801206"] = self.OnSubFinish801206,
        ["801217"] = self.OnSubFinish801217,
        ["801207"] = self.OnSubFinish801207,
        ["801220"] = self.OnSubFinish801220,
        ["801210"] = self.OnSubFinish801210,
        ["801223"] = self.OnSubFinish801223,
        ["801211"] = self.OnSubFinish801211,
        ["801213"] = self.OnSubFinish801213,
        ["801212"] = self.OnSubFinish801212,
        ["801218"] = self.OnSubFinish801218,
        ["801208"] = self.OnSubFinish801208,
        ["801219"] = self.OnSubFinish801219,
        ["801209"] = self.OnSubFinish801209
    }
end

function Quest8012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["801201"] = self.OnSubFailed801201,
        ["801202"] = self.OnSubFailed801202,
        ["801203"] = self.OnSubFailed801203,
        ["801205"] = self.OnSubFailed801205,
        ["801206"] = self.OnSubFailed801206,
        ["801207"] = self.OnSubFailed801207,
        ["801210"] = self.OnSubFailed801210,
        ["801208"] = self.OnSubFailed801208,
        ["801209"] = self.OnSubFailed801209
    }
end

function Quest8012:Start()
    print("Start")
end

function Quest8012:OnDestroy()
    print("OnDestroy")
end

function Quest8012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:FinishQuestID(false, 801222)
    elseif arg1 == 2 then
        self:FinishQuestID(false, 801223)
    end
end

function Quest8012:OnSubStart801221(arg1)
    print("OnSubStart801221")
    this:CreateQuestNpc(arg1, npcs.Npc13076Data.id, 0)
end

function Quest8012:OnSubFinish801221(arg1)
    print("OnSubFinish801221")
end

function Quest8012:OnSubStart801214(arg1)
    print("OnSubStart801214")
    actorMgr:CreateActorWithPos("Q8012Trigger12", "Actor/Gadget/Q8012Trigger12", 70900002, 0, {x = -859.774, y = 159.0, z = 2214.073}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q8012Trigger13", "Actor/Gadget/Q8012Trigger13", 70900002, 0, sceneData:GetDummyPoint(3, "Q801113_guide").pos, sceneData:GetDummyPoint(3, "Q801113_guide").rot, true, false, 3)
end

function Quest8012:OnSubFinish801214(arg1)
    print("OnSubFinish801214")
    actorMgr:DestroyEntityActor("Q8012Trigger12", 3, false)
    actorMgr:DestroyEntityActor("Q8012Trigger13", 3, false)
end

function Quest8012:OnSubStart801222(arg1)
    print("OnSubStart801222")
end

function Quest8012:OnSubFinish801222(arg1)
    print("OnSubFinish801222")
end

function Quest8012:OnSubStart801201(arg1)
    print("OnSubStart801201")
    actorMgr:CreateActorWithPos("Q8012Trigger11", "Actor/Gadget/Q8012Trigger11", 70900002, 0, {x = -859.774, y = 159.0, z = 2214.073}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20180)
end

function Quest8012:OnSubFinish801201(arg1)
    print("OnSubFinish801201")
end

function Quest8012:OnSubFailed801201(arg1)
    print("OnSubFailed801201")
end

function Quest8012:OnSubStart801224(arg1)
    print("OnSubStart801224")
end

function Quest8012:OnSubFinish801224(arg1)
    print("OnSubFinish801224")
end

function Quest8012:OnSubStart801202(arg1)
    print("OnSubStart801202")
end

function Quest8012:OnSubFinish801202(arg1)
    print("OnSubFinish801202")
end

function Quest8012:OnSubFailed801202(arg1)
    print("OnSubFailed801202")
end

function Quest8012:OnSubStart801203(arg1)
    print("OnSubStart801203")
    actorMgr:CreateActorWithPos("Q8012Trigger1", "Actor/Gadget/Q8012Trigger1", 70900002, 0, sceneData:GetDummyPoint(20181, "Q801203_N13072").pos, sceneData:GetDummyPoint(20181, "Q801203_N13072").rot, true, false, 20181)
end

function Quest8012:OnSubFinish801203(arg1)
    print("OnSubFinish801203")
    this:PlayerEnterDungeonPointWithDialogs(4, 1177, 801203, 1, datas.DialogsId, 10, nil, nil)
    this:DestroyQuestNpcActor(npcs.Npc13076Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20181)
end

function Quest8012:OnSubFailed801203(arg1)
    print("OnSubFailed801203")
    this:DestroyQuestNpcActor(npcs.Npc13076Data.alias, 20180)
    actorMgr:DestroyEntityActor("Q8012Trigger1", 20181, false)
end

function Quest8012:OnSubStart801204(arg1)
    print("OnSubStart801204")
    actorMgr:CreateActorWithPos("Q8012Trigger2", "Actor/Gadget/Q8012Trigger2", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801204(arg1)
    print("OnSubFinish801204")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13072Data.alias, 20180)
    end)
end

function Quest8012:OnSubStart801215(arg1)
    print("OnSubStart801215")
    actorMgr:CreateActorWithPos("Q8012Trigger8", "Actor/Gadget/Q8012Trigger8", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801215(arg1)
    print("OnSubFinish801215")
end

function Quest8012:OnSubStart801205(arg1)
    print("OnSubStart801205")
    this:ActionSafeCall(function(arg1)
        this:CreateLocalGadget(70380342, "4", {x = -699.305, y = 233.422, z = 2229.999}, {x = 85.417, y = -46.582, z = 86.052}, 20180, nil, nil, 0, false)
    end)
end

function Quest8012:OnSubFinish801205(arg1)
    print("OnSubFinish801205")
end

function Quest8012:OnSubFailed801205(arg1)
    print("OnSubFailed801205")
end

function Quest8012:OnSubStart801216(arg1)
    print("OnSubStart801216")
    actorMgr:CreateActorWithPos("Q8012Trigger8", "Actor/Gadget/Q8012Trigger8", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801216(arg1)
    print("OnSubFinish801216")
end

function Quest8012:OnSubStart801206(arg1)
    print("OnSubStart801206")
    actorMgr:CreateActorWithPos("Q8012Trigger", "Actor/Gadget/Q8012Trigger", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801207_N13078").pos, sceneData:GetDummyPoint(20180, "Q801207_N13078").rot, true, false, 20180)
    actorMgr:CreateActorWithPos("Q8012Trigger6", "Actor/Gadget/Q8012Trigger6", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801207_N13078").pos, sceneData:GetDummyPoint(20180, "Q801207_N13078").rot, true, false, 20180)
    this:CreateQuestNpc(arg1, npcs.Npc13078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13130Data.id, 0)
    this:CreateLocalGadget(70380342, "4", {x = -699.305, y = 233.422, z = 2229.999}, {x = 85.417, y = -46.582, z = 86.052}, 20180, nil, nil, 0, false)
end

function Quest8012:OnSubFinish801206(arg1)
    print("OnSubFinish801206")
end

function Quest8012:OnSubFailed801206(arg1)
    print("OnSubFailed801206")
end

function Quest8012:OnSubStart801217(arg1)
    print("OnSubStart801217")
    actorMgr:CreateActorWithPos("Q8012Trigger8", "Actor/Gadget/Q8012Trigger8", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801217(arg1)
    print("OnSubFinish801217")
end

function Quest8012:OnSubStart801207(arg1)
    print("OnSubStart801207")
    actorMgr:CreateActorWithPos("Q8012Trigger7", "Actor/Gadget/Q8012Trigger7", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801207_N13078").pos, sceneData:GetDummyPoint(20180, "Q801207_N13078").rot, true, false, 20180)
    this:CreateLocalGadget(70380342, "4", {x = -699.305, y = 233.422, z = 2229.999}, {x = 85.417, y = -46.582, z = 86.052}, 20180, nil, nil, 0, false)
end

function Quest8012:OnSubFinish801207(arg1)
    print("OnSubFinish801207")
    this:DestroyQuestNpcActor(npcs.Npc13078Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13079Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13130Data.alias, 20180)
end

function Quest8012:OnSubFailed801207(arg1)
    print("OnSubFailed801207")
    this:DestroyQuestNpcActor(npcs.Npc13078Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13079Data.alias, 20180)
    this:DestroyQuestNpcActor(npcs.Npc13130Data.alias, 20180)
end

function Quest8012:OnSubStart801220(arg1)
    print("OnSubStart801220")
    actorMgr:CreateActorWithPos("Q8012Trigger8", "Actor/Gadget/Q8012Trigger8", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801220(arg1)
    print("OnSubFinish801220")
end

function Quest8012:OnSubStart801210(arg1)
    print("OnSubStart801210")
    this:CreateQuestNpc(arg1, npcs.Npc13171Data.id, 0)
    this:CreateLocalGadget(70380342, "4", {x = -699.305, y = 233.422, z = 2229.999}, {x = 85.417, y = -46.582, z = 86.052}, 20180, nil, nil, 0, false)
    actorMgr:CreateActorWithPos("Q8012Trigger9", "Actor/Gadget/Q8012Trigger9", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801210_N13076").pos, sceneData:GetDummyPoint(20180, "Q801210_N13076").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801210(arg1)
    print("OnSubFinish801210")
    this:ActionSafeCall(function(arg1_2)
        this:DestroyQuestNpcActor(npcs.Npc13171Data.alias, 20180)
        this:RemoveLocalGadget(70380342, "4")
        this:TransmitPlayerById(arg1, 1)
    end)
end

function Quest8012:OnSubFailed801210(arg1)
    print("OnSubFailed801210")
    this:DestroyQuestNpcActor(npcs.Npc13171Data.alias, 20180)
    this:RemoveLocalGadget(70380342, "4")
end

function Quest8012:OnSubStart801223(arg1)
    print("OnSubStart801223")
    actorMgr:CreateActorWithPos("Q8012Trigger14", "Actor/Gadget/Q8012Trigger14", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801223(arg1)
    print("OnSubFinish801223")
end

function Quest8012:OnSubStart801211(arg1)
    print("OnSubStart801211")
    actorMgr:CreateActorWithPos("Q8012Trigger4", "Actor/Gadget/Q8012Trigger4", 70900002, 0, sceneData:GetDummyPoint(20180, "Q801003_N13072").pos, sceneData:GetDummyPoint(20180, "Q801003_N13072").rot, true, false, 20180)
end

function Quest8012:OnSubFinish801211(arg1)
    print("OnSubFinish801211")
    this:ActionSafeCall(function(arg1_2)
        this:PlayCutsceneIndex(801211, function(arg1_2)
            this:TransmitPlayerById(arg1, 2)
        end, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc13174Data.alias, 20180)
        end, nil, false)
    end)
end

function Quest8012:OnSubStart801213(arg1)
    print("OnSubStart801213")
end

function Quest8012:OnSubFinish801213(arg1)
    print("OnSubFinish801213")
end

function Quest8012:OnSubStart801212(arg1)
    print("OnSubStart801212")
    actorMgr:CreateActorWithPos("Q8012Trigger5", "Actor/Gadget/Q8012Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q800904_N1022").pos, sceneData:GetDummyPoint(3, "Q800904_N1022").rot, true, false, 3)
end

function Quest8012:OnSubFinish801212(arg1)
    print("OnSubFinish801212")
    this:DestroyQuestNpcActor(npcs.Npc1022Data.alias, 3)
end

function Quest8012:OnSubStart801218(arg1)
    print("OnSubStart801218")
end

function Quest8012:OnSubFinish801218(arg1)
    print("OnSubFinish801218")
end

function Quest8012:OnSubStart801208(arg1)
    print("OnSubStart801208")
end

function Quest8012:OnSubFinish801208(arg1)
    print("OnSubFinish801208")
end

function Quest8012:OnSubFailed801208(arg1)
    print("OnSubFailed801208")
end

function Quest8012:OnSubStart801219(arg1)
    print("OnSubStart801219")
end

function Quest8012:OnSubFinish801219(arg1)
    print("OnSubFinish801219")
end

function Quest8012:OnSubStart801209(arg1)
    print("OnSubStart801209")
end

function Quest8012:OnSubFinish801209(arg1)
    print("OnSubFinish801209")
end

function Quest8012:OnSubFailed801209(arg1)
    print("OnSubFailed801209")
end

return Quest8012
