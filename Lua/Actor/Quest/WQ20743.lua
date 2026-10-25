require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20743 = class("Quest20743", QuestActorProxy)
Quest20743.defaultAlias = "Quest20743"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20743:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20743:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2074301"] = self.OnSubStart2074301,
        ["2074302"] = self.OnSubStart2074302,
        ["2074303"] = self.OnSubStart2074303,
        ["2074304"] = self.OnSubStart2074304,
        ["2074305"] = self.OnSubStart2074305,
        ["2074308"] = self.OnSubStart2074308,
        ["2074306"] = self.OnSubStart2074306,
        ["2074307"] = self.OnSubStart2074307
    }
end

function Quest20743:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2074301"] = self.OnSubFinish2074301,
        ["2074302"] = self.OnSubFinish2074302,
        ["2074303"] = self.OnSubFinish2074303,
        ["2074304"] = self.OnSubFinish2074304,
        ["2074305"] = self.OnSubFinish2074305,
        ["2074308"] = self.OnSubFinish2074308,
        ["2074306"] = self.OnSubFinish2074306,
        ["2074307"] = self.OnSubFinish2074307
    }
end

function Quest20743:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2074301"] = self.OnSubFailed2074301,
        ["2074302"] = self.OnSubFailed2074302,
        ["2074303"] = self.OnSubFailed2074303,
        ["2074304"] = self.OnSubFailed2074304,
        ["2074305"] = self.OnSubFailed2074305,
        ["2074308"] = self.OnSubFailed2074308,
        ["2074306"] = self.OnSubFailed2074306,
        ["2074307"] = self.OnSubFailed2074307
    }
end

function Quest20743:Start()
    print("Start")
end

function Quest20743:OnDestroy()
    print("OnDestroy")
end

function Quest20743:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest20743:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20743:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1527Data.alias, 0, true)
end

function Quest20743:NewFunction()
    print("NewFunction")
    self:NotifyTo(npcs.Npc1527Data.alias, 0, true)
end

function Quest20743:OnSubStart2074301(arg1)
    print("OnSubStart2074301")
end

function Quest20743:OnSubFinish2074301(arg1)
    print("OnSubFinish2074301")
    self:NotifyTo(npcs.Npc1527Data.alias, 2, true)
end

function Quest20743:OnSubFailed2074301(arg1)
    print("OnSubFailed2074301")
end

function Quest20743:OnSubStart2074302(arg1)
    print("OnSubStart2074302")
    self:NotifyTo(npcs.Npc1527Data.alias, 2, true)
end

function Quest20743:OnSubFinish2074302(arg1)
    print("OnSubFinish2074302")
end

function Quest20743:OnSubFailed2074302(arg1)
    print("OnSubFailed2074302")
end

function Quest20743:OnSubStart2074303(arg1)
    print("OnSubStart2074303")
    self:NotifyTo(npcs.Npc1527Data.alias, 2, true)
end

function Quest20743:OnSubFinish2074303(arg1)
    print("OnSubFinish2074303")
end

function Quest20743:OnSubFailed2074303(arg1)
    print("OnSubFailed2074303")
end

function Quest20743:OnSubStart2074304(arg1)
    print("OnSubStart2074304")
    self:NotifyTo(npcs.Npc1527Data.alias, 2, true)
end

function Quest20743:OnSubFinish2074304(arg1)
    print("OnSubFinish2074304")
end

function Quest20743:OnSubFailed2074304(arg1)
    print("OnSubFailed2074304")
end

function Quest20743:OnSubStart2074305(arg1)
    print("OnSubStart2074305")
end

function Quest20743:OnSubFinish2074305(arg1)
    print("OnSubFinish2074305")
end

function Quest20743:OnSubFailed2074305(arg1)
    print("OnSubFailed2074305")
end

function Quest20743:OnSubStart2074308(arg1)
    print("OnSubStart2074308")
end

function Quest20743:OnSubFinish2074308(arg1)
    print("OnSubFinish2074308")
end

function Quest20743:OnSubFailed2074308(arg1)
    print("OnSubFailed2074308")
end

function Quest20743:OnSubStart2074306(arg1)
    print("OnSubStart2074306")
    self:NotifyTo(npcs.Npc1527Data.alias, 2, true)
end

function Quest20743:OnSubFinish2074306(arg1)
    print("OnSubFinish2074306")
end

function Quest20743:OnSubFailed2074306(arg1)
    print("OnSubFailed2074306")
end

function Quest20743:OnSubStart2074307(arg1)
    print("OnSubStart2074307")
end

function Quest20743:OnSubFinish2074307(arg1)
    print("OnSubFinish2074307")
end

function Quest20743:OnSubFailed2074307(arg1)
    print("OnSubFailed2074307")
end

return Quest20743
