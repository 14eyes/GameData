require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72121 = class("Quest72121", QuestActorProxy)
Quest72121.defaultAlias = "Quest72121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212101"] = self.OnSubStart7212101,
        ["7212102"] = self.OnSubStart7212102,
        ["7212103"] = self.OnSubStart7212103,
        ["7212104"] = self.OnSubStart7212104,
        ["7212105"] = self.OnSubStart7212105,
        ["7212106"] = self.OnSubStart7212106,
        ["7212107"] = self.OnSubStart7212107,
        ["7212108"] = self.OnSubStart7212108
    }
end

function Quest72121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212101"] = self.OnSubFinish7212101,
        ["7212102"] = self.OnSubFinish7212102,
        ["7212103"] = self.OnSubFinish7212103,
        ["7212104"] = self.OnSubFinish7212104,
        ["7212105"] = self.OnSubFinish7212105,
        ["7212106"] = self.OnSubFinish7212106,
        ["7212107"] = self.OnSubFinish7212107,
        ["7212108"] = self.OnSubFinish7212108
    }
end

function Quest72121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212101"] = self.OnSubFailed7212101,
        ["7212102"] = self.OnSubFailed7212102,
        ["7212103"] = self.OnSubFailed7212103,
        ["7212104"] = self.OnSubFailed7212104,
        ["7212105"] = self.OnSubFailed7212105,
        ["7212106"] = self.OnSubFailed7212106,
        ["7212107"] = self.OnSubFailed7212107,
        ["7212108"] = self.OnSubFailed7212108
    }
end

function Quest72121:Start()
    print("Start")
end

function Quest72121:OnDestroy()
    print("OnDestroy")
end

function Quest72121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72121:OnSubStart7212101(arg1)
    print("OnSubStart7212101")
end

function Quest72121:OnSubFinish7212101(arg1)
    print("OnSubFinish7212101")
end

function Quest72121:OnSubFailed7212101(arg1)
    print("OnSubFailed7212101")
end

function Quest72121:OnSubStart7212102(arg1)
    print("OnSubStart7212102")
    self:CreateQuestNpc(arg1, npcs.Npc316201Data.id, 1)
end

function Quest72121:OnSubFinish7212102(arg1)
    print("OnSubFinish7212102")
end

function Quest72121:OnSubFailed7212102(arg1)
    print("OnSubFailed7212102")
end

function Quest72121:OnSubStart7212103(arg1)
    print("OnSubStart7212103")
end

function Quest72121:OnSubFinish7212103(arg1)
    print("OnSubFinish7212103")
end

function Quest72121:OnSubFailed7212103(arg1)
    print("OnSubFailed7212103")
end

function Quest72121:OnSubStart7212104(arg1)
    print("OnSubStart7212104")
end

function Quest72121:OnSubFinish7212104(arg1)
    print("OnSubFinish7212104")
end

function Quest72121:OnSubFailed7212104(arg1)
    print("OnSubFailed7212104")
end

function Quest72121:OnSubStart7212105(arg1)
    print("OnSubStart7212105")
end

function Quest72121:OnSubFinish7212105(arg1)
    print("OnSubFinish7212105")
end

function Quest72121:OnSubFailed7212105(arg1)
    print("OnSubFailed7212105")
end

function Quest72121:OnSubStart7212106(arg1)
    print("OnSubStart7212106")
end

function Quest72121:OnSubFinish7212106(arg1)
    print("OnSubFinish7212106")
end

function Quest72121:OnSubFailed7212106(arg1)
    print("OnSubFailed7212106")
end

function Quest72121:OnSubStart7212107(arg1)
    print("OnSubStart7212107")
end

function Quest72121:OnSubFinish7212107(arg1)
    print("OnSubFinish7212107")
end

function Quest72121:OnSubFailed7212107(arg1)
    print("OnSubFailed7212107")
end

function Quest72121:OnSubStart7212108(arg1)
    print("OnSubStart7212108")
end

function Quest72121:OnSubFinish7212108(arg1)
    print("OnSubFinish7212108")
    self:SafeDestroyQuestNpc(npcs.Npc316201Data.alias, 3)
end

function Quest72121:OnSubFailed7212108(arg1)
    print("OnSubFailed7212108")
end

return Quest72121
