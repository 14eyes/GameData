require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40033 = class("Quest40033", QuestActorProxy)
Quest40033.defaultAlias = "Quest40033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4003304"] = self.OnSubStart4003304,
        ["4003301"] = self.OnSubStart4003301,
        ["4003302"] = self.OnSubStart4003302,
        ["4003305"] = self.OnSubStart4003305,
        ["4003306"] = self.OnSubStart4003306,
        ["4003307"] = self.OnSubStart4003307,
        ["4003303"] = self.OnSubStart4003303
    }
end

function Quest40033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4003304"] = self.OnSubFinish4003304,
        ["4003301"] = self.OnSubFinish4003301,
        ["4003302"] = self.OnSubFinish4003302,
        ["4003305"] = self.OnSubFinish4003305,
        ["4003306"] = self.OnSubFinish4003306,
        ["4003307"] = self.OnSubFinish4003307,
        ["4003303"] = self.OnSubFinish4003303
    }
end

function Quest40033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40033:Start()
    print("Start")
end

function Quest40033:OnDestroy()
    print("OnDestroy")
end

function Quest40033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40033:OnSubStart4003304(arg1)
    print("OnSubStart4003304")
end

function Quest40033:OnSubFinish4003304(arg1)
    print("OnSubFinish4003304")
end

function Quest40033:OnSubStart4003301(arg1)
    print("OnSubStart4003301")
end

function Quest40033:OnSubFinish4003301(arg1)
    print("OnSubFinish4003301")
    self:CallDelay(1, function()
        actorUtils.ShowHachiStagePage(3)
    end)
end

function Quest40033:OnSubStart4003302(arg1)
    print("OnSubStart4003302")
end

function Quest40033:OnSubFinish4003302(arg1)
    print("OnSubFinish4003302")
end

function Quest40033:OnSubStart4003305(arg1)
    print("OnSubStart4003305")
end

function Quest40033:OnSubFinish4003305(arg1)
    print("OnSubFinish4003305")
end

function Quest40033:OnSubStart4003306(arg1)
    print("OnSubStart4003306")
end

function Quest40033:OnSubFinish4003306(arg1)
    print("OnSubFinish4003306")
end

function Quest40033:OnSubStart4003307(arg1)
    print("OnSubStart4003307")
end

function Quest40033:OnSubFinish4003307(arg1)
    print("OnSubFinish4003307")
end

function Quest40033:OnSubStart4003303(arg1)
    print("OnSubStart4003303")
end

function Quest40033:OnSubFinish4003303(arg1)
    print("OnSubFinish4003303")
end

return Quest40033
