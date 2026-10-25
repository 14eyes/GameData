require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23009 = class("Quest23009", QuestActorProxy)
Quest23009.defaultAlias = "Quest23009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300901"] = self.OnSubStart2300901,
        ["2300902"] = self.OnSubStart2300902,
        ["2300903"] = self.OnSubStart2300903,
        ["2300917"] = self.OnSubStart2300917,
        ["2300904"] = self.OnSubStart2300904,
        ["2300918"] = self.OnSubStart2300918,
        ["2300908"] = self.OnSubStart2300908,
        ["2300909"] = self.OnSubStart2300909,
        ["2300910"] = self.OnSubStart2300910,
        ["2300919"] = self.OnSubStart2300919,
        ["2300911"] = self.OnSubStart2300911,
        ["2300912"] = self.OnSubStart2300912,
        ["2300913"] = self.OnSubStart2300913,
        ["2300920"] = self.OnSubStart2300920,
        ["2300914"] = self.OnSubStart2300914,
        ["2300915"] = self.OnSubStart2300915,
        ["2300916"] = self.OnSubStart2300916,
        ["2300921"] = self.OnSubStart2300921
    }
end

function Quest23009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300901"] = self.OnSubFinish2300901,
        ["2300902"] = self.OnSubFinish2300902,
        ["2300903"] = self.OnSubFinish2300903,
        ["2300917"] = self.OnSubFinish2300917,
        ["2300904"] = self.OnSubFinish2300904,
        ["2300918"] = self.OnSubFinish2300918,
        ["2300908"] = self.OnSubFinish2300908,
        ["2300909"] = self.OnSubFinish2300909,
        ["2300910"] = self.OnSubFinish2300910,
        ["2300919"] = self.OnSubFinish2300919,
        ["2300911"] = self.OnSubFinish2300911,
        ["2300912"] = self.OnSubFinish2300912,
        ["2300913"] = self.OnSubFinish2300913,
        ["2300920"] = self.OnSubFinish2300920,
        ["2300914"] = self.OnSubFinish2300914,
        ["2300915"] = self.OnSubFinish2300915,
        ["2300916"] = self.OnSubFinish2300916,
        ["2300921"] = self.OnSubFinish2300921
    }
end

function Quest23009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23009:Start()
    print("Start")
end

function Quest23009:OnDestroy()
    print("OnDestroy")
end

function Quest23009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4103Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4103Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q2300909Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300912Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2300915Trigger", 3, false)
end

function Quest23009:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23009:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23009:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest23009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23009:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest23009:OnSubStart2300901(arg1)
    print("OnSubStart2300901")
end

function Quest23009:OnSubFinish2300901(arg1)
    print("OnSubFinish2300901")
end

function Quest23009:OnSubStart2300902(arg1)
    print("OnSubStart2300902")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4103Data.alias, 1, true)
end

function Quest23009:OnSubFinish2300902(arg1)
    print("OnSubFinish2300902")
end

function Quest23009:OnSubStart2300903(arg1)
    print("OnSubStart2300903")
    self:DailyNpcSafeHideSelf(npcs.Npc4103Data.alias, 1, true)
end

function Quest23009:OnSubFinish2300903(arg1)
    print("OnSubFinish2300903")
end

function Quest23009:OnSubStart2300917(arg1)
    print("OnSubStart2300917")
    self:DailyNpcSafeHideSelf(npcs.Npc4103Data.alias, 1, true)
end

function Quest23009:OnSubFinish2300917(arg1)
    print("OnSubFinish2300917")
end

function Quest23009:OnSubStart2300904(arg1)
    print("OnSubStart2300904")
    self:CreateQuestNpc(arg1, npcs.Npc4103Data.id, 1)
end

function Quest23009:OnSubFinish2300904(arg1)
    print("OnSubFinish2300904")
    self:NpcDestroy(npcs.Npc4016Data.alias, 3)
end

function Quest23009:OnSubStart2300918(arg1)
    print("OnSubStart2300918")
end

function Quest23009:OnSubFinish2300918(arg1)
    print("OnSubFinish2300918")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4103Data.alias)
end

function Quest23009:OnSubStart2300908(arg1)
    print("OnSubStart2300908")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
end

function Quest23009:OnSubFinish2300908(arg1)
    print("OnSubFinish2300908")
end

function Quest23009:OnSubStart2300909(arg1)
    print("OnSubStart2300909")
    actorMgr:CreateActorWithPos("Q2300909Trigger", "Actor/Gadget/Q2300909Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300909_guide").pos, sceneData:GetDummyPoint(3, "Q2300909_guide").rot, true, false, 3)
end

function Quest23009:OnSubFinish2300909(arg1)
    print("OnSubFinish2300909")
    self:NarratorOnlyTask(datas.NarratorTable2300909FINISH, nil, "")
    if actorMgr:GetActor("Q2300909Trigger") ~= nil then
        self:ActorDestroy("Q2300909Trigger")
    end
end

function Quest23009:OnSubStart2300910(arg1)
    print("OnSubStart2300910")
end

function Quest23009:OnSubFinish2300910(arg1)
    print("OnSubFinish2300910")
end

function Quest23009:OnSubStart2300919(arg1)
    print("OnSubStart2300919")
end

function Quest23009:OnSubFinish2300919(arg1)
    print("OnSubFinish2300919")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4016Data.alias)
end

function Quest23009:OnSubStart2300911(arg1)
    print("OnSubStart2300911")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
end

function Quest23009:OnSubFinish2300911(arg1)
    print("OnSubFinish2300911")
end

function Quest23009:OnSubStart2300912(arg1)
    print("OnSubStart2300912")
    actorMgr:CreateActorWithPos("Q2300912Trigger", "Actor/Gadget/Q2300912Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300912_guide").pos, sceneData:GetDummyPoint(3, "Q2300912_guide").rot, true, false, 3)
end

function Quest23009:OnSubFinish2300912(arg1)
    print("OnSubFinish2300912")
    self:NarratorOnlyTask(datas.NarratorTable2300912FINISH, nil, "")
end

function Quest23009:OnSubStart2300913(arg1)
    print("OnSubStart2300913")
end

function Quest23009:OnSubFinish2300913(arg1)
    print("OnSubFinish2300913")
end

function Quest23009:OnSubStart2300920(arg1)
    print("OnSubStart2300920")
end

function Quest23009:OnSubFinish2300920(arg1)
    print("OnSubFinish2300920")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4016Data.alias)
end

function Quest23009:OnSubStart2300914(arg1)
    print("OnSubStart2300914")
    self:CreateQuestNpc(arg1, npcs.Npc4016Data.id, 1)
end

function Quest23009:OnSubFinish2300914(arg1)
    print("OnSubFinish2300914")
end

function Quest23009:OnSubStart2300915(arg1)
    print("OnSubStart2300915")
    actorMgr:CreateActorWithPos("Q2300915Trigger", "Actor/Gadget/Q2300915Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300915_guide").pos, sceneData:GetDummyPoint(3, "Q2300915_guide").rot, true, false, 3)
end

function Quest23009:OnSubFinish2300915(arg1)
    print("OnSubFinish2300915")
end

function Quest23009:OnSubStart2300916(arg1)
    print("OnSubStart2300916")
end

function Quest23009:OnSubFinish2300916(arg1)
    print("OnSubFinish2300916")
end

function Quest23009:OnSubStart2300921(arg1)
    print("OnSubStart2300921")
end

function Quest23009:OnSubFinish2300921(arg1)
    print("OnSubFinish2300921")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4016Data.alias)
end

return Quest23009
