require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72239 = class("Quest72239", QuestActorProxy)
Quest72239.defaultAlias = "Quest72239"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72239:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72239:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223901"] = self.OnSubStart7223901,
        ["7223902"] = self.OnSubStart7223902,
        ["7223903"] = self.OnSubStart7223903,
        ["7223920"] = self.OnSubStart7223920,
        ["7223904"] = self.OnSubStart7223904,
        ["7223905"] = self.OnSubStart7223905,
        ["7223906"] = self.OnSubStart7223906,
        ["7223907"] = self.OnSubStart7223907,
        ["7223908"] = self.OnSubStart7223908,
        ["7223909"] = self.OnSubStart7223909,
        ["7223910"] = self.OnSubStart7223910,
        ["7223911"] = self.OnSubStart7223911,
        ["7223912"] = self.OnSubStart7223912,
        ["7223913"] = self.OnSubStart7223913,
        ["7223914"] = self.OnSubStart7223914,
        ["7223915"] = self.OnSubStart7223915,
        ["7223916"] = self.OnSubStart7223916,
        ["7223917"] = self.OnSubStart7223917,
        ["7223918"] = self.OnSubStart7223918,
        ["7223919"] = self.OnSubStart7223919
    }
end

function Quest72239:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223901"] = self.OnSubFinish7223901,
        ["7223902"] = self.OnSubFinish7223902,
        ["7223903"] = self.OnSubFinish7223903,
        ["7223920"] = self.OnSubFinish7223920,
        ["7223904"] = self.OnSubFinish7223904,
        ["7223905"] = self.OnSubFinish7223905,
        ["7223906"] = self.OnSubFinish7223906,
        ["7223907"] = self.OnSubFinish7223907,
        ["7223908"] = self.OnSubFinish7223908,
        ["7223909"] = self.OnSubFinish7223909,
        ["7223910"] = self.OnSubFinish7223910,
        ["7223911"] = self.OnSubFinish7223911,
        ["7223912"] = self.OnSubFinish7223912,
        ["7223913"] = self.OnSubFinish7223913,
        ["7223914"] = self.OnSubFinish7223914,
        ["7223915"] = self.OnSubFinish7223915,
        ["7223916"] = self.OnSubFinish7223916,
        ["7223917"] = self.OnSubFinish7223917,
        ["7223918"] = self.OnSubFinish7223918,
        ["7223919"] = self.OnSubFinish7223919
    }
end

function Quest72239:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72239:Start()
    print("Start")
end

function Quest72239:OnDestroy()
    print("OnDestroy")
end

function Quest72239:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72239:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72239:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72239:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72239:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72239:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72239:SummonPaimon(arg1)
    print("SummonPaimon")
    print("SummonPaimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, arg1, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72239:VanishPaimon()
    print("VanishPaimon")
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    globalActor:EnablePlayerInput(true)
    questNpcActor:DestroyWithDisappear(false)
end

function Quest72239:OnSubStart7223901(arg1)
    print("OnSubStart7223901")
end

function Quest72239:OnSubFinish7223901(arg1)
    print("OnSubFinish7223901")
end

function Quest72239:OnSubStart7223902(arg1)
    print("OnSubStart7223902")
    self:NpcCreate(arg1, npcs.NPC20344Data.id, 1)
    self:NpcCreate(arg1, npcs.NPC20352Data.id, 2)
end

function Quest72239:OnSubFinish7223902(arg1)
    print("OnSubFinish7223902")
end

function Quest72239:OnSubStart7223903(arg1)
    print("OnSubStart7223903")
    actorMgr:CreateActorWithPos("Q7223903Trigger", "Actor/Gadget/Q7223903Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "72239_MemoryOfPast").pos, sceneData:GetDummyPoint(5, "72239_MemoryOfPast").rot, true, false, 5)
end

function Quest72239:OnSubFinish7223903(arg1)
    print("OnSubFinish7223903")
end

function Quest72239:OnSubStart7223920(arg1)
    print("OnSubStart7223920")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7223920)
    self:EnablePlayerInput(true)
end

function Quest72239:OnSubFinish7223920(arg1)
    print("OnSubFinish7223920")
    self:VanishPaimon()
end

function Quest72239:OnSubStart7223904(arg1)
    print("OnSubStart7223904")
end

function Quest72239:OnSubFinish7223904(arg1)
    print("OnSubFinish7223904")
    self:NpcDestroyWithDither(npcs.NPC20344Data.alias, 5)
end

function Quest72239:OnSubStart7223905(arg1)
    print("OnSubStart7223905")
end

function Quest72239:OnSubFinish7223905(arg1)
    print("OnSubFinish7223905")
end

function Quest72239:OnSubStart7223906(arg1)
    print("OnSubStart7223906")
end

function Quest72239:OnSubFinish7223906(arg1)
    print("OnSubFinish7223906")
    self:NpcDestroyWithDither(npcs.NPC20352Data.alias, 5)
    self:NarratorOnlyTask(datas.NarratorTable_7223906, nil, "")
end

function Quest72239:OnSubStart7223907(arg1)
    print("OnSubStart7223907")
end

function Quest72239:OnSubFinish7223907(arg1)
    print("OnSubFinish7223907")
end

function Quest72239:OnSubStart7223908(arg1)
    print("OnSubStart7223908")
    actorMgr:CreateActorWithPos("Q7223908Trigger", "Actor/Gadget/Q7223908Trigger", 70900002, 0, {x = 428.6625, y = 142.6068, z = -192.2715}, {x = 0, y = 0, z = 0}, true, false, 5)
    print("CreateTrigger7223908")
end

function Quest72239:OnSubFinish7223908(arg1)
    print("OnSubFinish7223908")
end

function Quest72239:OnSubStart7223909(arg1)
    print("OnSubStart7223909")
end

function Quest72239:OnSubFinish7223909(arg1)
    print("OnSubFinish7223909")
end

function Quest72239:OnSubStart7223910(arg1)
    print("OnSubStart7223910")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7223910)
    self:EnablePlayerInput(true)
end

function Quest72239:OnSubFinish7223910(arg1)
    print("OnSubFinish7223910")
    self:VanishPaimon()
end

function Quest72239:OnSubStart7223911(arg1)
    print("OnSubStart7223911")
    actorMgr:CreateActorWithPos("Q7223911Trigger", "Actor/Gadget/Q7223911Trigger", 70900002, 0, {x = -371, y = 213, z = 1506}, {x = 0, y = 0, z = 0}, true, false, 5)
    print("CreateTrigger7223911")
end

function Quest72239:OnSubFinish7223911(arg1)
    print("OnSubFinish7223911")
end

function Quest72239:OnSubStart7223912(arg1)
    print("OnSubStart7223912")
end

function Quest72239:OnSubFinish7223912(arg1)
    print("OnSubFinish7223912")
end

function Quest72239:OnSubStart7223913(arg1)
    print("OnSubStart7223913")
    actorMgr:CreateActorWithPos("Q7223913Trigger", "Actor/Gadget/Q7223913Trigger", 70900002, 0, {x = -370.3118, y = 214.8882, z = 1506.844}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72239:OnSubFinish7223913(arg1)
    print("OnSubFinish7223913")
    self:ActorDestroy("Q7223913Trigger")
end

function Quest72239:OnSubStart7223914(arg1)
    print("OnSubStart7223914")
    self:EnablePlayerInput(false)
    self:SummonPaimon(7223914)
    self:EnablePlayerInput(true)
end

function Quest72239:OnSubFinish7223914(arg1)
    print("OnSubFinish7223914")
    self:VanishPaimon()
end

function Quest72239:OnSubStart7223915(arg1)
    print("OnSubStart7223915")
end

function Quest72239:OnSubFinish7223915(arg1)
    print("OnSubFinish7223915")
end

function Quest72239:OnSubStart7223916(arg1)
    print("OnSubStart7223916")
end

function Quest72239:OnSubFinish7223916(arg1)
    print("OnSubFinish7223916")
end

function Quest72239:OnSubStart7223917(arg1)
    print("OnSubStart7223917")
end

function Quest72239:OnSubFinish7223917(arg1)
    print("OnSubFinish7223917")
end

function Quest72239:OnSubStart7223918(arg1)
    print("OnSubStart7223918")
end

function Quest72239:OnSubFinish7223918(arg1)
    print("OnSubFinish7223918")
    self:NarratorOnlyTask(datas.NarratorTable_7223918, nil, "")
end

function Quest72239:OnSubStart7223919(arg1)
    print("OnSubStart7223919")
end

function Quest72239:OnSubFinish7223919(arg1)
    print("OnSubFinish7223919")
end

return Quest72239
