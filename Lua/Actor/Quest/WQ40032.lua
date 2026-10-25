require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40032 = class("Quest40032", QuestActorProxy)
Quest40032.defaultAlias = "Quest40032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003204"] = self.OnSubStart4003204,
        ["4003201"] = self.OnSubStart4003201,
        ["4003202"] = self.OnSubStart4003202,
        ["4003205"] = self.OnSubStart4003205,
        ["4003206"] = self.OnSubStart4003206,
        ["4003207"] = self.OnSubStart4003207,
        ["4003203"] = self.OnSubStart4003203
    }
end

function Quest40032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003204"] = self.OnSubFinish4003204,
        ["4003201"] = self.OnSubFinish4003201,
        ["4003202"] = self.OnSubFinish4003202,
        ["4003205"] = self.OnSubFinish4003205,
        ["4003206"] = self.OnSubFinish4003206,
        ["4003207"] = self.OnSubFinish4003207,
        ["4003203"] = self.OnSubFinish4003203
    }
end

function Quest40032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40032:Start()
    print("Start")
end

function Quest40032:OnDestroy()
    print("OnDestroy")
end

function Quest40032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40032:OnSubStart4003204(arg1)
    print("OnSubStart4003204")
end

function Quest40032:OnSubFinish4003204(arg1)
    print("OnSubFinish4003204")
end

function Quest40032:OnSubStart4003201(arg1)
    print("OnSubStart4003201")
end

function Quest40032:OnSubFinish4003201(arg1)
    print("OnSubFinish4003201")
    self:CallDelay(1, function()
        actorUtils.ShowHachiStagePage(2)
    end)
end

function Quest40032:OnSubStart4003202(arg1)
    print("OnSubStart4003202")
end

function Quest40032:OnSubFinish4003202(arg1)
    print("OnSubFinish4003202")
end

function Quest40032:OnSubStart4003205(arg1)
    print("OnSubStart4003205")
end

function Quest40032:OnSubFinish4003205(arg1)
    print("OnSubFinish4003205")
end

function Quest40032:OnSubStart4003206(arg1)
    print("OnSubStart4003206")
end

function Quest40032:OnSubFinish4003206(arg1)
    print("OnSubFinish4003206")
end

function Quest40032:OnSubStart4003207(arg1)
    print("OnSubStart4003207")
end

function Quest40032:OnSubFinish4003207(arg1)
    print("OnSubFinish4003207")
end

function Quest40032:OnSubStart4003203(arg1)
    print("OnSubStart4003203")
end

function Quest40032:OnSubFinish4003203(arg1)
    print("OnSubFinish4003203")
end

return Quest40032
