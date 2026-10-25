require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20701 = class("Quest20701", QuestActorProxy)
Quest20701.defaultAlias = "Quest20701"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20701:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20701:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2070101"] = self.OnSubStart2070101,
        ["2070102"] = self.OnSubStart2070102,
        ["2070103"] = self.OnSubStart2070103,
        ["2070104"] = self.OnSubStart2070104,
        ["2070105"] = self.OnSubStart2070105,
        ["2070106"] = self.OnSubStart2070106,
        ["2070107"] = self.OnSubStart2070107
    }
end

function Quest20701:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2070101"] = self.OnSubFinish2070101,
        ["2070102"] = self.OnSubFinish2070102,
        ["2070103"] = self.OnSubFinish2070103,
        ["2070104"] = self.OnSubFinish2070104,
        ["2070105"] = self.OnSubFinish2070105,
        ["2070106"] = self.OnSubFinish2070106,
        ["2070107"] = self.OnSubFinish2070107
    }
end

function Quest20701:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2070101"] = self.OnSubFailed2070101,
        ["2070102"] = self.OnSubFailed2070102,
        ["2070103"] = self.OnSubFailed2070103,
        ["2070104"] = self.OnSubFailed2070104,
        ["2070105"] = self.OnSubFailed2070105,
        ["2070106"] = self.OnSubFailed2070106,
        ["2070107"] = self.OnSubFailed2070107
    }
end

function Quest20701:Start()
    print("Start")
end

function Quest20701:OnDestroy()
    print("OnDestroy")
end

function Quest20701:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest20701:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20701:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1631Data.alias, 3)
end

function Quest20701:NewFunction()
    print("NewFunction")
    self:DestroyQuestNpcActor(npcs.Npc1631Data.alias, 3)
end

function Quest20701:OnSubStart2070101(arg1)
    print("OnSubStart2070101")
    self:CreateQuestNpc(arg1, npcs.Npc1631Data.id, 0)
end

function Quest20701:OnSubFinish2070101(arg1)
    print("OnSubFinish2070101")
end

function Quest20701:OnSubFailed2070101(arg1)
    print("OnSubFailed2070101")
end

function Quest20701:OnSubStart2070102(arg1)
    print("OnSubStart2070102")
end

function Quest20701:OnSubFinish2070102(arg1)
    print("OnSubFinish2070102")
end

function Quest20701:OnSubFailed2070102(arg1)
    print("OnSubFailed2070102")
end

function Quest20701:OnSubStart2070103(arg1)
    print("OnSubStart2070103")
end

function Quest20701:OnSubFinish2070103(arg1)
    print("OnSubFinish2070103")
end

function Quest20701:OnSubFailed2070103(arg1)
    print("OnSubFailed2070103")
end

function Quest20701:OnSubStart2070104(arg1)
    print("OnSubStart2070104")
end

function Quest20701:OnSubFinish2070104(arg1)
    print("OnSubFinish2070104")
end

function Quest20701:OnSubFailed2070104(arg1)
    print("OnSubFailed2070104")
end

function Quest20701:OnSubStart2070105(arg1)
    print("OnSubStart2070105")
end

function Quest20701:OnSubFinish2070105(arg1)
    print("OnSubFinish2070105")
end

function Quest20701:OnSubFailed2070105(arg1)
    print("OnSubFailed2070105")
end

function Quest20701:OnSubStart2070106(arg1)
    print("OnSubStart2070106")
end

function Quest20701:OnSubFinish2070106(arg1)
    print("OnSubFinish2070106")
end

function Quest20701:OnSubFailed2070106(arg1)
    print("OnSubFailed2070106")
end

function Quest20701:OnSubStart2070107(arg1)
    print("OnSubStart2070107")
end

function Quest20701:OnSubFinish2070107(arg1)
    print("OnSubFinish2070107")
end

function Quest20701:OnSubFailed2070107(arg1)
    print("OnSubFailed2070107")
end

return Quest20701
