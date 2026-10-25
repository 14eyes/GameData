require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23002 = class("Quest23002", QuestActorProxy)
Quest23002.defaultAlias = "Quest23002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300201"] = self.OnSubStart2300201,
        ["2300202"] = self.OnSubStart2300202,
        ["2300203"] = self.OnSubStart2300203,
        ["2300204"] = self.OnSubStart2300204,
        ["2300206"] = self.OnSubStart2300206,
        ["2300205"] = self.OnSubStart2300205
    }
end

function Quest23002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300201"] = self.OnSubFinish2300201,
        ["2300202"] = self.OnSubFinish2300202,
        ["2300203"] = self.OnSubFinish2300203,
        ["2300204"] = self.OnSubFinish2300204,
        ["2300206"] = self.OnSubFinish2300206,
        ["2300205"] = self.OnSubFinish2300205
    }
end

function Quest23002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23002:Start()
    print("Start")
end

function Quest23002:OnDestroy()
    print("OnDestroy")
end

function Quest23002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23002:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4024Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4024Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q23002Trigger", 0, false)
end

function Quest23002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23002:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23002:OnSubStart2300201(arg1)
    print("OnSubStart2300201")
    self:CreateQuestNpc(arg1, npcs.Npc4024Data.id, 1)
end

function Quest23002:OnSubFinish2300201(arg1)
    print("OnSubFinish2300201")
end

function Quest23002:OnSubStart2300202(arg1)
    print("OnSubStart2300202")
    actorMgr:CreateActorWithPos("Q23002Trigger", "Actor/Gadget/Q23002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2300202_Guide").pos, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest23002:OnSubFinish2300202(arg1)
    print("OnSubFinish2300202")
    self:ActorDestroy("Q23002Trigger")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "story")
end

function Quest23002:OnSubStart2300203(arg1)
    print("OnSubStart2300203")
end

function Quest23002:OnSubFinish2300203(arg1)
    print("OnSubFinish2300203")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "story")
end

function Quest23002:OnSubStart2300204(arg1)
    print("OnSubStart2300204")
end

function Quest23002:OnSubFinish2300204(arg1)
    print("OnSubFinish2300204")
end

function Quest23002:OnSubStart2300206(arg1)
    print("OnSubStart2300206")
end

function Quest23002:OnSubFinish2300206(arg1)
    print("OnSubFinish2300206")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4024Data.alias)
end

function Quest23002:OnSubStart2300205(arg1)
    print("OnSubStart2300205")
end

function Quest23002:OnSubFinish2300205(arg1)
    print("OnSubFinish2300205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4024Data.alias)
end

return Quest23002
