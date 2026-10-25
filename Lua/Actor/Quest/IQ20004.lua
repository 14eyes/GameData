require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20004 = class("Quest20004", QuestActorProxy)
Quest20004.defaultAlias = "Quest20004"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20004:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2000401"] = self.OnSubStart2000401,
        ["2000406"] = self.OnSubStart2000406,
        ["2000407"] = self.OnSubStart2000407,
        ["2000402"] = self.OnSubStart2000402,
        ["2000403"] = self.OnSubStart2000403,
        ["2000404"] = self.OnSubStart2000404,
        ["2000405"] = self.OnSubStart2000405
    }
end

function Quest20004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2000401"] = self.OnSubFinish2000401,
        ["2000406"] = self.OnSubFinish2000406,
        ["2000407"] = self.OnSubFinish2000407,
        ["2000402"] = self.OnSubFinish2000402,
        ["2000403"] = self.OnSubFinish2000403,
        ["2000404"] = self.OnSubFinish2000404,
        ["2000405"] = self.OnSubFinish2000405
    }
end

function Quest20004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20004:Start()
    print("Start")
end

function Quest20004:OnDestroy()
    print("OnDestroy")
end

function Quest20004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20004:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2000402Trigger", 3, false)
end

function Quest20004:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest20004:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20004:DestroyMona()
    print("DestroyMona")
    self:NpcDestroyWithDither(npcs.Npc10095Data.alias, 3)
end

function Quest20004:OnSubStart2000401(arg1)
    print("OnSubStart2000401")
    self:CreateQuestNpc(arg1, npcs.Npc1606Data.id, 1)
end

function Quest20004:OnSubFinish2000401(arg1)
    print("OnSubFinish2000401")
end

function Quest20004:OnSubStart2000406(arg1)
    print("OnSubStart2000406")
end

function Quest20004:OnSubFinish2000406(arg1)
    print("OnSubFinish2000406")
end

function Quest20004:OnSubStart2000407(arg1)
    print("OnSubStart2000407")
end

function Quest20004:OnSubFinish2000407(arg1)
    print("OnSubFinish2000407")
end

function Quest20004:OnSubStart2000402(arg1)
    print("OnSubStart2000402")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
    actorMgr:CreateActorWithPos("Q2000402Trigger", "Actor/Gadget/Q2000402Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2000402_N10095").pos, sceneData:GetDummyPoint(3, "Q2000402_N10095").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10095Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest20004:OnSubFinish2000402(arg1)
    print("OnSubFinish2000402")
end

function Quest20004:OnSubStart2000403(arg1)
    print("OnSubStart2000403")
end

function Quest20004:OnSubFinish2000403(arg1)
    print("OnSubFinish2000403")
end

function Quest20004:OnSubStart2000404(arg1)
    print("OnSubStart2000404")
end

function Quest20004:OnSubFinish2000404(arg1)
    print("OnSubFinish2000404")
end

function Quest20004:OnSubStart2000405(arg1)
    print("OnSubStart2000405")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 1)
end

function Quest20004:OnSubFinish2000405(arg1)
    print("OnSubFinish2000405")
    self:SafeDestroyQuestNpc(npcs.Npc1606Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc10095Data.alias)
end

return Quest20004
