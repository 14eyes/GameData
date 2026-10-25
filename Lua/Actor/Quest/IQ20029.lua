require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20029 = class("Quest20029", QuestActorProxy)
Quest20029.defaultAlias = "Quest20029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2002901"] = self.OnSubStart2002901,
        ["2002902"] = self.OnSubStart2002902,
        ["2002903"] = self.OnSubStart2002903,
        ["2002904"] = self.OnSubStart2002904,
        ["2002905"] = self.OnSubStart2002905,
        ["2002906"] = self.OnSubStart2002906,
        ["2002907"] = self.OnSubStart2002907,
        ["2002908"] = self.OnSubStart2002908,
        ["2002909"] = self.OnSubStart2002909
    }
end

function Quest20029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2002901"] = self.OnSubFinish2002901,
        ["2002902"] = self.OnSubFinish2002902,
        ["2002903"] = self.OnSubFinish2002903,
        ["2002904"] = self.OnSubFinish2002904,
        ["2002905"] = self.OnSubFinish2002905,
        ["2002906"] = self.OnSubFinish2002906,
        ["2002907"] = self.OnSubFinish2002907,
        ["2002908"] = self.OnSubFinish2002908,
        ["2002909"] = self.OnSubFinish2002909
    }
end

function Quest20029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2002903"] = self.OnSubFailed2002903}
end

function Quest20029:Start()
    print("Start")
end

function Quest20029:OnDestroy()
    print("OnDestroy")
end

function Quest20029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1435Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1573Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1599Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1517Data.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1600Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2002903Trigger", 3, false)
end

function Quest20029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest20029:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20029:OnSubStart2002901(arg1)
    print("OnSubStart2002901")
    self:CreateQuestNpc(arg1, npcs.Npc1599Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1517Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1600Data.id, 3)
end

function Quest20029:OnSubFinish2002901(arg1)
    print("OnSubFinish2002901")
end

function Quest20029:OnSubStart2002902(arg1)
    print("OnSubStart2002902")
    self:CreateQuestNpc(arg1, npcs.Npc1435Data.id, 1)
end

function Quest20029:OnSubFinish2002902(arg1)
    print("OnSubFinish2002902")
end

function Quest20029:OnSubStart2002903(arg1)
    print("OnSubStart2002903")
    self:CreateQuestNpc(arg1, npcs.Npc1573Data.id, 1)
    actorMgr:CreateActorWithPos("Q2002903Trigger", "Actor/Gadget/Q2002903Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2002903_N1573").pos, sceneData:GetDummyPoint(3, "Q2002903_N1573").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc1573Data.alias):DoFreeStyle(4190, true, nil, true, true, true)
end

function Quest20029:OnSubFinish2002903(arg1)
    print("OnSubFinish2002903")
end

function Quest20029:OnSubFailed2002903(arg1)
    print("OnSubFailed2002903")
    self:ActorDestroy("Q2002903Trigger")
end

function Quest20029:OnSubStart2002904(arg1)
    print("OnSubStart2002904")
    self:GetQuestNpcActor(npcs.Npc1573Data.alias):DoFreeStyle(4190, true, nil, true, true, true)
end

function Quest20029:OnSubFinish2002904(arg1)
    print("OnSubFinish2002904")
end

function Quest20029:OnSubStart2002905(arg1)
    print("OnSubStart2002905")
    self:GetQuestNpcActor(npcs.Npc1573Data.alias):DoFreeStateTrigger()
end

function Quest20029:OnSubFinish2002905(arg1)
    print("OnSubFinish2002905")
end

function Quest20029:OnSubStart2002906(arg1)
    print("OnSubStart2002906")
end

function Quest20029:OnSubFinish2002906(arg1)
    print("OnSubFinish2002906")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1435Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc1573Data.alias, 3)
end

function Quest20029:OnSubStart2002907(arg1)
    print("OnSubStart2002907")
end

function Quest20029:OnSubFinish2002907(arg1)
    print("OnSubFinish2002907")
end

function Quest20029:OnSubStart2002908(arg1)
    print("OnSubStart2002908")
end

function Quest20029:OnSubFinish2002908(arg1)
    print("OnSubFinish2002908")
end

function Quest20029:OnSubStart2002909(arg1)
    print("OnSubStart2002909")
end

function Quest20029:OnSubFinish2002909(arg1)
    print("OnSubFinish2002909")
    self:SafeDestroyQuestNpc(npcs.Npc1599Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1600Data.alias, 3)
end

return Quest20029
