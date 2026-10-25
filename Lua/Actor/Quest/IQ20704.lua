require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20704 = class("Quest20704", QuestActorProxy)
Quest20704.defaultAlias = "Quest20704"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20704:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20704:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2070401"] = self.OnSubStart2070401,
        ["2070402"] = self.OnSubStart2070402,
        ["2070403"] = self.OnSubStart2070403,
        ["2070404"] = self.OnSubStart2070404,
        ["2070405"] = self.OnSubStart2070405,
        ["2070406"] = self.OnSubStart2070406,
        ["2070407"] = self.OnSubStart2070407,
        ["2070408"] = self.OnSubStart2070408
    }
end

function Quest20704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2070401"] = self.OnSubFinish2070401,
        ["2070402"] = self.OnSubFinish2070402,
        ["2070403"] = self.OnSubFinish2070403,
        ["2070404"] = self.OnSubFinish2070404,
        ["2070405"] = self.OnSubFinish2070405,
        ["2070406"] = self.OnSubFinish2070406,
        ["2070407"] = self.OnSubFinish2070407,
        ["2070408"] = self.OnSubFinish2070408
    }
end

function Quest20704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2070401"] = self.OnSubFailed2070401,
        ["2070402"] = self.OnSubFailed2070402,
        ["2070403"] = self.OnSubFailed2070403,
        ["2070404"] = self.OnSubFailed2070404,
        ["2070405"] = self.OnSubFailed2070405,
        ["2070406"] = self.OnSubFailed2070406,
        ["2070407"] = self.OnSubFailed2070407,
        ["2070408"] = self.OnSubFailed2070408
    }
end

function Quest20704:Start()
    print("Start")
end

function Quest20704:OnDestroy()
    print("OnDestroy")
end

function Quest20704:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.3, self.BlackScreen)
end

function Quest20704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20704:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2093Data.alias, 0)
end

function Quest20704:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc2093Data.alias, 3)
end

function Quest20704:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0.2, 1, 0.5)
end

function Quest20704:OnSubStart2070401(arg1)
    print("OnSubStart2070401")
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 1)
end

function Quest20704:OnSubFinish2070401(arg1)
    print("OnSubFinish2070401")
end

function Quest20704:OnSubFailed2070401(arg1)
    print("OnSubFailed2070401")
end

function Quest20704:OnSubStart2070402(arg1)
    print("OnSubStart2070402")
end

function Quest20704:OnSubFinish2070402(arg1)
    print("OnSubFinish2070402")
end

function Quest20704:OnSubFailed2070402(arg1)
    print("OnSubFailed2070402")
end

function Quest20704:OnSubStart2070403(arg1)
    print("OnSubStart2070403")
end

function Quest20704:OnSubFinish2070403(arg1)
    print("OnSubFinish2070403")
end

function Quest20704:OnSubFailed2070403(arg1)
    print("OnSubFailed2070403")
end

function Quest20704:OnSubStart2070404(arg1)
    print("OnSubStart2070404")
end

function Quest20704:OnSubFinish2070404(arg1)
    print("OnSubFinish2070404")
end

function Quest20704:OnSubFailed2070404(arg1)
    print("OnSubFailed2070404")
end

function Quest20704:OnSubStart2070405(arg1)
    print("OnSubStart2070405")
end

function Quest20704:OnSubFinish2070405(arg1)
    print("OnSubFinish2070405")
end

function Quest20704:OnSubFailed2070405(arg1)
    print("OnSubFailed2070405")
end

function Quest20704:OnSubStart2070406(arg1)
    print("OnSubStart2070406")
end

function Quest20704:OnSubFinish2070406(arg1)
    print("OnSubFinish2070406")
end

function Quest20704:OnSubFailed2070406(arg1)
    print("OnSubFailed2070406")
end

function Quest20704:OnSubStart2070407(arg1)
    print("OnSubStart2070407")
end

function Quest20704:OnSubFinish2070407(arg1)
    print("OnSubFinish2070407")
end

function Quest20704:OnSubFailed2070407(arg1)
    print("OnSubFailed2070407")
end

function Quest20704:OnSubStart2070408(arg1)
    print("OnSubStart2070408")
end

function Quest20704:OnSubFinish2070408(arg1)
    print("OnSubFinish2070408")
end

function Quest20704:OnSubFailed2070408(arg1)
    print("OnSubFailed2070408")
end

return Quest20704
