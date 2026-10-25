require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73104 = class("Quest73104", QuestActorProxy)
Quest73104.defaultAlias = "Quest73104"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310416"] = self.OnSubStart7310416,
        ["7310417"] = self.OnSubStart7310417,
        ["7310401"] = self.OnSubStart7310401,
        ["7310402"] = self.OnSubStart7310402,
        ["7310403"] = self.OnSubStart7310403,
        ["7310404"] = self.OnSubStart7310404,
        ["7310405"] = self.OnSubStart7310405,
        ["7310406"] = self.OnSubStart7310406,
        ["7310407"] = self.OnSubStart7310407,
        ["7310408"] = self.OnSubStart7310408,
        ["7310409"] = self.OnSubStart7310409,
        ["7310410"] = self.OnSubStart7310410,
        ["7310413"] = self.OnSubStart7310413,
        ["7310414"] = self.OnSubStart7310414,
        ["7310415"] = self.OnSubStart7310415,
        ["7310411"] = self.OnSubStart7310411,
        ["7310412"] = self.OnSubStart7310412
    }
end

function Quest73104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310416"] = self.OnSubFinish7310416,
        ["7310417"] = self.OnSubFinish7310417,
        ["7310401"] = self.OnSubFinish7310401,
        ["7310402"] = self.OnSubFinish7310402,
        ["7310403"] = self.OnSubFinish7310403,
        ["7310404"] = self.OnSubFinish7310404,
        ["7310405"] = self.OnSubFinish7310405,
        ["7310406"] = self.OnSubFinish7310406,
        ["7310407"] = self.OnSubFinish7310407,
        ["7310408"] = self.OnSubFinish7310408,
        ["7310409"] = self.OnSubFinish7310409,
        ["7310410"] = self.OnSubFinish7310410,
        ["7310413"] = self.OnSubFinish7310413,
        ["7310414"] = self.OnSubFinish7310414,
        ["7310415"] = self.OnSubFinish7310415,
        ["7310411"] = self.OnSubFinish7310411,
        ["7310412"] = self.OnSubFinish7310412
    }
end

function Quest73104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73104:Start()
    print("Start")
end

function Quest73104:OnDestroy()
    print("OnDestroy")
end

function Quest73104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73104:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73104:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73104:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73104:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:CreateQuestNpcById(7310407, npcs.Npc12789Data.id, 1)
        self:GetQuestNpcActor(npcs.Npc12789Data.alias, 73104):DoFreeStyle(1, true, nil, true, true, false)
        self:CreateQuestNpcById(7310407, npcs.Npc12790Data.id, 2)
        self:GetQuestNpcActor(npcs.Npc12790Data.alias, 73104):DoFreeStyle(1, true, nil, true, true, false)
        self:CreateQuestNpcById(7310407, npcs.Npc12791Data.id, 3)
        self:GetQuestNpcActor(npcs.Npc12791Data.alias, 73104):DoFreeStyle(1, true, nil, true, true, false)
        self:CreateQuestNpcById(7310407, npcs.Npc12792Data.id, 4)
        self:GetQuestNpcActor(npcs.Npc12792Data.alias, 73104):DoFreeStyle(1, true, nil, true, true, false)
    end
end

function Quest73104:OnSubStart7310416(arg1)
    print("OnSubStart7310416")
end

function Quest73104:OnSubFinish7310416(arg1)
    print("OnSubFinish7310416")
end

function Quest73104:OnSubStart7310417(arg1)
    print("OnSubStart7310417")
end

function Quest73104:OnSubFinish7310417(arg1)
    print("OnSubFinish7310417")
    self:NarratorOnlyTask(datas.NarratorTable731049912, nil, "")
end

function Quest73104:OnSubStart7310401(arg1)
    print("OnSubStart7310401")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12710Data.id, 2)
end

function Quest73104:OnSubFinish7310401(arg1)
    print("OnSubFinish7310401")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

function Quest73104:OnSubStart7310402(arg1)
    print("OnSubStart7310402")
    actorMgr:CreateActorWithPos("Q7310402Trigger", "Actor/Gadget/Q7310402Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310402_guide").pos, sceneData:GetDummyPoint(3, "Q7310402_guide").rot, true, false, 3)
end

function Quest73104:OnSubFinish7310402(arg1)
    print("OnSubFinish7310402")
    self:NarratorOnlyTask(datas.NarratorTable731049904, nil, "")
    if actorMgr:GetActor("Q7310402Trigger") ~= nil then
        self:ActorDestroy("Q7310402Trigger")
    end
end

function Quest73104:OnSubStart7310403(arg1)
    print("OnSubStart7310403")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12710Data.id, 2)
end

function Quest73104:OnSubFinish7310403(arg1)
    print("OnSubFinish7310403")
end

function Quest73104:OnSubStart7310404(arg1)
    print("OnSubStart7310404")
end

function Quest73104:OnSubFinish7310404(arg1)
    print("OnSubFinish7310404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

function Quest73104:OnSubStart7310405(arg1)
    print("OnSubStart7310405")
    actorMgr:CreateActorWithPos("Q7310405Trigger", "Actor/Gadget/Q7310405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310405_guide").pos, sceneData:GetDummyPoint(3, "Q7310405_guide").rot, true, false, 3)
end

function Quest73104:OnSubFinish7310405(arg1)
    print("OnSubFinish7310405")
    self:NarratorOnlyTask(datas.NarratorTable731049908, nil, "")
    if actorMgr:GetActor("Q7310405Trigger") ~= nil then
        self:ActorDestroy("Q7310405Trigger")
    end
end

function Quest73104:OnSubStart7310406(arg1)
    print("OnSubStart7310406")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12710Data.id, 2)
end

function Quest73104:OnSubFinish7310406(arg1)
    print("OnSubFinish7310406")
end

function Quest73104:OnSubStart7310407(arg1)
    print("OnSubStart7310407")
end

function Quest73104:OnSubFinish7310407(arg1)
    print("OnSubFinish7310407")
    self:NpcDestroy(npcs.Npc12789Data.alias, 3)
    self:NpcDestroy(npcs.Npc12790Data.alias, 3)
    self:NpcDestroy(npcs.Npc12791Data.alias, 3)
    self:NpcDestroy(npcs.Npc12792Data.alias, 3)
end

function Quest73104:OnSubStart7310408(arg1)
    print("OnSubStart7310408")
    actorMgr:CreateActorWithPos("Q7310408Trigger", "Actor/Gadget/Q7310408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310408_guide").pos, sceneData:GetDummyPoint(3, "Q7310408_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc4163Data.alias):DoFreeStyle(4220, true, nil, true, true, false)
end

function Quest73104:OnSubFinish7310408(arg1)
    print("OnSubFinish7310408")
    if actorMgr:GetActor("Q7310408Trigger") ~= nil then
        self:ActorDestroy("Q7310408Trigger")
    end
end

function Quest73104:OnSubStart7310409(arg1)
    print("OnSubStart7310409")
    self:GetQuestNpcActor(npcs.Npc4163Data.alias):DoFreeStyle(4220, true, nil, true, true, false, false)
end

function Quest73104:OnSubFinish7310409(arg1)
    print("OnSubFinish7310409")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

function Quest73104:OnSubStart7310410(arg1)
    print("OnSubStart7310410")
end

function Quest73104:OnSubFinish7310410(arg1)
    print("OnSubFinish7310410")
    self:NarratorOnlyTask(datas.NarratorTable731049910, nil, "")
end

function Quest73104:OnSubStart7310413(arg1)
    print("OnSubStart7310413")
end

function Quest73104:OnSubFinish7310413(arg1)
    print("OnSubFinish7310413")
end

function Quest73104:OnSubStart7310414(arg1)
    print("OnSubStart7310414")
end

function Quest73104:OnSubFinish7310414(arg1)
    print("OnSubFinish7310414")
end

function Quest73104:OnSubStart7310415(arg1)
    print("OnSubStart7310415")
end

function Quest73104:OnSubFinish7310415(arg1)
    print("OnSubFinish7310415")
end

function Quest73104:OnSubStart7310411(arg1)
    print("OnSubStart7310411")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12710Data.id, 2)
end

function Quest73104:OnSubFinish7310411(arg1)
    print("OnSubFinish7310411")
end

function Quest73104:OnSubStart7310412(arg1)
    print("OnSubStart7310412")
end

function Quest73104:OnSubFinish7310412(arg1)
    print("OnSubFinish7310412")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

return Quest73104
