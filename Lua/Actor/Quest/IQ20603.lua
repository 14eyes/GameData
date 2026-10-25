require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20603 = class("Quest20603", QuestActorProxy)
Quest20603.defaultAlias = "Quest20603"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20603:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20603:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2060301"] = self.OnSubStart2060301,
        ["2060302"] = self.OnSubStart2060302,
        ["2060303"] = self.OnSubStart2060303,
        ["2060304"] = self.OnSubStart2060304,
        ["2060305"] = self.OnSubStart2060305,
        ["2060306"] = self.OnSubStart2060306,
        ["2060307"] = self.OnSubStart2060307,
        ["2060308"] = self.OnSubStart2060308,
        ["2060309"] = self.OnSubStart2060309,
        ["2060310"] = self.OnSubStart2060310,
        ["2060311"] = self.OnSubStart2060311,
        ["2060312"] = self.OnSubStart2060312,
        ["2060313"] = self.OnSubStart2060313
    }
end

function Quest20603:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2060301"] = self.OnSubFinish2060301,
        ["2060302"] = self.OnSubFinish2060302,
        ["2060303"] = self.OnSubFinish2060303,
        ["2060304"] = self.OnSubFinish2060304,
        ["2060305"] = self.OnSubFinish2060305,
        ["2060306"] = self.OnSubFinish2060306,
        ["2060307"] = self.OnSubFinish2060307,
        ["2060308"] = self.OnSubFinish2060308,
        ["2060309"] = self.OnSubFinish2060309,
        ["2060310"] = self.OnSubFinish2060310,
        ["2060311"] = self.OnSubFinish2060311,
        ["2060312"] = self.OnSubFinish2060312,
        ["2060313"] = self.OnSubFinish2060313
    }
end

function Quest20603:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2060301"] = self.OnSubFailed2060301,
        ["2060302"] = self.OnSubFailed2060302,
        ["2060303"] = self.OnSubFailed2060303,
        ["2060304"] = self.OnSubFailed2060304,
        ["2060305"] = self.OnSubFailed2060305,
        ["2060306"] = self.OnSubFailed2060306,
        ["2060307"] = self.OnSubFailed2060307,
        ["2060308"] = self.OnSubFailed2060308,
        ["2060309"] = self.OnSubFailed2060309,
        ["2060310"] = self.OnSubFailed2060310,
        ["2060311"] = self.OnSubFailed2060311,
        ["2060312"] = self.OnSubFailed2060312,
        ["2060313"] = self.OnSubFailed2060313
    }
end

function Quest20603:Start()
    print("Start")
end

function Quest20603:OnDestroy()
    print("OnDestroy")
end

function Quest20603:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearAll)
end

function Quest20603:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20603:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest20603:ClearAll()
    print("ClearAll")
    self:DestroyQuestNpcActor(npcs.Npc1409Data.alias, 3)
end

function Quest20603:OnSubStart2060301(arg1)
    print("OnSubStart2060301")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 1)
end

function Quest20603:OnSubFinish2060301(arg1)
    print("OnSubFinish2060301")
end

function Quest20603:OnSubFailed2060301(arg1)
    print("OnSubFailed2060301")
end

function Quest20603:OnSubStart2060302(arg1)
    print("OnSubStart2060302")
end

function Quest20603:OnSubFinish2060302(arg1)
    print("OnSubFinish2060302")
end

function Quest20603:OnSubFailed2060302(arg1)
    print("OnSubFailed2060302")
end

function Quest20603:OnSubStart2060303(arg1)
    print("OnSubStart2060303")
end

function Quest20603:OnSubFinish2060303(arg1)
    print("OnSubFinish2060303")
end

function Quest20603:OnSubFailed2060303(arg1)
    print("OnSubFailed2060303")
end

function Quest20603:OnSubStart2060304(arg1)
    print("OnSubStart2060304")
end

function Quest20603:OnSubFinish2060304(arg1)
    print("OnSubFinish2060304")
end

function Quest20603:OnSubFailed2060304(arg1)
    print("OnSubFailed2060304")
end

function Quest20603:OnSubStart2060305(arg1)
    print("OnSubStart2060305")
end

function Quest20603:OnSubFinish2060305(arg1)
    print("OnSubFinish2060305")
end

function Quest20603:OnSubFailed2060305(arg1)
    print("OnSubFailed2060305")
end

function Quest20603:OnSubStart2060306(arg1)
    print("OnSubStart2060306")
end

function Quest20603:OnSubFinish2060306(arg1)
    print("OnSubFinish2060306")
end

function Quest20603:OnSubFailed2060306(arg1)
    print("OnSubFailed2060306")
end

function Quest20603:OnSubStart2060307(arg1)
    print("OnSubStart2060307")
end

function Quest20603:OnSubFinish2060307(arg1)
    print("OnSubFinish2060307")
end

function Quest20603:OnSubFailed2060307(arg1)
    print("OnSubFailed2060307")
end

function Quest20603:OnSubStart2060308(arg1)
    print("OnSubStart2060308")
end

function Quest20603:OnSubFinish2060308(arg1)
    print("OnSubFinish2060308")
end

function Quest20603:OnSubFailed2060308(arg1)
    print("OnSubFailed2060308")
end

function Quest20603:OnSubStart2060309(arg1)
    print("OnSubStart2060309")
end

function Quest20603:OnSubFinish2060309(arg1)
    print("OnSubFinish2060309")
end

function Quest20603:OnSubFailed2060309(arg1)
    print("OnSubFailed2060309")
end

function Quest20603:OnSubStart2060310(arg1)
    print("OnSubStart2060310")
end

function Quest20603:OnSubFinish2060310(arg1)
    print("OnSubFinish2060310")
end

function Quest20603:OnSubFailed2060310(arg1)
    print("OnSubFailed2060310")
end

function Quest20603:OnSubStart2060311(arg1)
    print("OnSubStart2060311")
end

function Quest20603:OnSubFinish2060311(arg1)
    print("OnSubFinish2060311")
end

function Quest20603:OnSubFailed2060311(arg1)
    print("OnSubFailed2060311")
end

function Quest20603:OnSubStart2060312(arg1)
    print("OnSubStart2060312")
end

function Quest20603:OnSubFinish2060312(arg1)
    print("OnSubFinish2060312")
end

function Quest20603:OnSubFailed2060312(arg1)
    print("OnSubFailed2060312")
end

function Quest20603:OnSubStart2060313(arg1)
    print("OnSubStart2060313")
end

function Quest20603:OnSubFinish2060313(arg1)
    print("OnSubFinish2060313")
end

function Quest20603:OnSubFailed2060313(arg1)
    print("OnSubFailed2060313")
end

return Quest20603
