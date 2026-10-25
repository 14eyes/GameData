require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20104 = class("Quest20104", QuestActorProxy)
Quest20104.defaultAlias = "Quest20104"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20104:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2010401"] = self.OnSubStart2010401,
        ["2010402"] = self.OnSubStart2010402,
        ["2010403"] = self.OnSubStart2010403,
        ["2010404"] = self.OnSubStart2010404,
        ["2010405"] = self.OnSubStart2010405
    }
end

function Quest20104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2010401"] = self.OnSubFinish2010401,
        ["2010402"] = self.OnSubFinish2010402,
        ["2010403"] = self.OnSubFinish2010403,
        ["2010404"] = self.OnSubFinish2010404,
        ["2010405"] = self.OnSubFinish2010405
    }
end

function Quest20104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2010401"] = self.OnSubFailed2010401,
        ["2010402"] = self.OnSubFailed2010402,
        ["2010403"] = self.OnSubFailed2010403,
        ["2010404"] = self.OnSubFailed2010404,
        ["2010405"] = self.OnSubFailed2010405
    }
end

function Quest20104:Start()
    print("Start")
end

function Quest20104:OnDestroy()
    print("OnDestroy")
end

function Quest20104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20104:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1596Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1595Data.alias, 3)
end

function Quest20104:DestroyNpc()
    print("DestroyNpc")
    self:DestroyQuestNpcActor(npcs.Npc1596Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1595Data.alias, 3)
end

function Quest20104:OnSubStart2010401(arg1)
    print("OnSubStart2010401")
    self:CreateQuestNpc(arg1, npcs.Npc1596Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1595Data.id, 2)
end

function Quest20104:OnSubFinish2010401(arg1)
    print("OnSubFinish2010401")
end

function Quest20104:OnSubFailed2010401(arg1)
    print("OnSubFailed2010401")
end

function Quest20104:OnSubStart2010402(arg1)
    print("OnSubStart2010402")
end

function Quest20104:OnSubFinish2010402(arg1)
    print("OnSubFinish2010402")
    self:NarratorOnlyTask(datas.SuccessReminder, nil, "")
end

function Quest20104:OnSubFailed2010402(arg1)
    print("OnSubFailed2010402")
end

function Quest20104:OnSubStart2010403(arg1)
    print("OnSubStart2010403")
end

function Quest20104:OnSubFinish2010403(arg1)
    print("OnSubFinish2010403")
    self:NarratorOnlyTask(datas.FailReminder, nil, "")
end

function Quest20104:OnSubFailed2010403(arg1)
    print("OnSubFailed2010403")
end

function Quest20104:OnSubStart2010404(arg1)
    print("OnSubStart2010404")
end

function Quest20104:OnSubFinish2010404(arg1)
    print("OnSubFinish2010404")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest20104:OnSubFailed2010404(arg1)
    print("OnSubFailed2010404")
end

function Quest20104:OnSubStart2010405(arg1)
    print("OnSubStart2010405")
end

function Quest20104:OnSubFinish2010405(arg1)
    print("OnSubFinish2010405")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.DestroyNpc, nil, nil, "")
end

function Quest20104:OnSubFailed2010405(arg1)
    print("OnSubFailed2010405")
end

return Quest20104
