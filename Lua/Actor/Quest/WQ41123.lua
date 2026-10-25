require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41123 = class("Quest41123", QuestActorProxy)
Quest41123.defaultAlias = "Quest41123"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41123:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41123:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112310"] = self.OnSubStart4112310,
        ["4112301"] = self.OnSubStart4112301,
        ["4112302"] = self.OnSubStart4112302,
        ["4112303"] = self.OnSubStart4112303,
        ["4112304"] = self.OnSubStart4112304,
        ["4112305"] = self.OnSubStart4112305,
        ["4112306"] = self.OnSubStart4112306,
        ["4112307"] = self.OnSubStart4112307,
        ["4112308"] = self.OnSubStart4112308,
        ["4112309"] = self.OnSubStart4112309
    }
end

function Quest41123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112310"] = self.OnSubFinish4112310,
        ["4112301"] = self.OnSubFinish4112301,
        ["4112302"] = self.OnSubFinish4112302,
        ["4112303"] = self.OnSubFinish4112303,
        ["4112304"] = self.OnSubFinish4112304,
        ["4112305"] = self.OnSubFinish4112305,
        ["4112306"] = self.OnSubFinish4112306,
        ["4112307"] = self.OnSubFinish4112307,
        ["4112308"] = self.OnSubFinish4112308,
        ["4112309"] = self.OnSubFinish4112309
    }
end

function Quest41123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112310"] = self.OnSubFailed4112310,
        ["4112301"] = self.OnSubFailed4112301,
        ["4112302"] = self.OnSubFailed4112302,
        ["4112303"] = self.OnSubFailed4112303,
        ["4112304"] = self.OnSubFailed4112304,
        ["4112305"] = self.OnSubFailed4112305,
        ["4112306"] = self.OnSubFailed4112306,
        ["4112307"] = self.OnSubFailed4112307,
        ["4112308"] = self.OnSubFailed4112308,
        ["4112309"] = self.OnSubFailed4112309
    }
end

function Quest41123:Start()
    print("Start")
end

function Quest41123:OnDestroy()
    print("OnDestroy")
end

function Quest41123:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 0.6, 0.2, self.ClearData, nil, nil, "")
end

function Quest41123:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest41123:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41123:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1575Data.alias, 3)
end

function Quest41123:OnSubStart4112310(arg1)
    print("OnSubStart4112310")
end

function Quest41123:OnSubFinish4112310(arg1)
    print("OnSubFinish4112310")
end

function Quest41123:OnSubFailed4112310(arg1)
    print("OnSubFailed4112310")
end

function Quest41123:OnSubStart4112301(arg1)
    print("OnSubStart4112301")
    self:CreateQuestNpc(arg1, npcs.Npc1433Data.id, 1)
end

function Quest41123:OnSubFinish4112301(arg1)
    print("OnSubFinish4112301")
end

function Quest41123:OnSubFailed4112301(arg1)
    print("OnSubFailed4112301")
end

function Quest41123:OnSubStart4112302(arg1)
    print("OnSubStart4112302")
end

function Quest41123:OnSubFinish4112302(arg1)
    print("OnSubFinish4112302")
end

function Quest41123:OnSubFailed4112302(arg1)
    print("OnSubFailed4112302")
end

function Quest41123:OnSubStart4112303(arg1)
    print("OnSubStart4112303")
end

function Quest41123:OnSubFinish4112303(arg1)
    print("OnSubFinish4112303")
end

function Quest41123:OnSubFailed4112303(arg1)
    print("OnSubFailed4112303")
end

function Quest41123:OnSubStart4112304(arg1)
    print("OnSubStart4112304")
    self:CreateQuestNpc(arg1, npcs.Npc1575Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1575Data.alias):DoFreeStyle(1070, true, nil, true, true)
end

function Quest41123:OnSubFinish4112304(arg1)
    print("OnSubFinish4112304")
end

function Quest41123:OnSubFailed4112304(arg1)
    print("OnSubFailed4112304")
end

function Quest41123:OnSubStart4112305(arg1)
    print("OnSubStart4112305")
end

function Quest41123:OnSubFinish4112305(arg1)
    print("OnSubFinish4112305")
end

function Quest41123:OnSubFailed4112305(arg1)
    print("OnSubFailed4112305")
end

function Quest41123:OnSubStart4112306(arg1)
    print("OnSubStart4112306")
end

function Quest41123:OnSubFinish4112306(arg1)
    print("OnSubFinish4112306")
end

function Quest41123:OnSubFailed4112306(arg1)
    print("OnSubFailed4112306")
end

function Quest41123:OnSubStart4112307(arg1)
    print("OnSubStart4112307")
end

function Quest41123:OnSubFinish4112307(arg1)
    print("OnSubFinish4112307")
end

function Quest41123:OnSubFailed4112307(arg1)
    print("OnSubFailed4112307")
end

function Quest41123:OnSubStart4112308(arg1)
    print("OnSubStart4112308")
end

function Quest41123:OnSubFinish4112308(arg1)
    print("OnSubFinish4112308")
end

function Quest41123:OnSubFailed4112308(arg1)
    print("OnSubFailed4112308")
end

function Quest41123:OnSubStart4112309(arg1)
    print("OnSubStart4112309")
end

function Quest41123:OnSubFinish4112309(arg1)
    print("OnSubFinish4112309")
    self:DestroyQuestNpcActor(npcs.Npc1433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1575Data.alias, 3)
end

function Quest41123:OnSubFailed4112309(arg1)
    print("OnSubFailed4112309")
end

return Quest41123
