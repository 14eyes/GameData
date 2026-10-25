require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41124 = class("Quest41124", QuestActorProxy)
Quest41124.defaultAlias = "Quest41124"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41124:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112401"] = self.OnSubStart4112401,
        ["4112402"] = self.OnSubStart4112402,
        ["4112403"] = self.OnSubStart4112403,
        ["4112404"] = self.OnSubStart4112404,
        ["4112405"] = self.OnSubStart4112405,
        ["4112498"] = self.OnSubStart4112498,
        ["4112499"] = self.OnSubStart4112499,
        ["4112406"] = self.OnSubStart4112406,
        ["4112497"] = self.OnSubStart4112497,
        ["4112496"] = self.OnSubStart4112496,
        ["4112407"] = self.OnSubStart4112407,
        ["4112408"] = self.OnSubStart4112408
    }
end

function Quest41124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112401"] = self.OnSubFinish4112401,
        ["4112402"] = self.OnSubFinish4112402,
        ["4112403"] = self.OnSubFinish4112403,
        ["4112404"] = self.OnSubFinish4112404,
        ["4112405"] = self.OnSubFinish4112405,
        ["4112498"] = self.OnSubFinish4112498,
        ["4112499"] = self.OnSubFinish4112499,
        ["4112406"] = self.OnSubFinish4112406,
        ["4112497"] = self.OnSubFinish4112497,
        ["4112496"] = self.OnSubFinish4112496,
        ["4112407"] = self.OnSubFinish4112407,
        ["4112408"] = self.OnSubFinish4112408
    }
end

function Quest41124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112401"] = self.OnSubFailed4112401,
        ["4112402"] = self.OnSubFailed4112402,
        ["4112403"] = self.OnSubFailed4112403,
        ["4112404"] = self.OnSubFailed4112404,
        ["4112405"] = self.OnSubFailed4112405,
        ["4112498"] = self.OnSubFailed4112498,
        ["4112499"] = self.OnSubFailed4112499,
        ["4112406"] = self.OnSubFailed4112406,
        ["4112497"] = self.OnSubFailed4112497,
        ["4112496"] = self.OnSubFailed4112496,
        ["4112407"] = self.OnSubFailed4112407,
        ["4112408"] = self.OnSubFailed4112408
    }
end

function Quest41124:Start()
    print("Start")
end

function Quest41124:OnDestroy()
    print("OnDestroy")
end

function Quest41124:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 0.4, 0.2, self.ClearData, nil, nil, "")
end

function Quest41124:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest41124:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41124:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1525Data.alias, 3)
end

function Quest41124:OnSubStart4112401(arg1)
    print("OnSubStart4112401")
end

function Quest41124:OnSubFinish4112401(arg1)
    print("OnSubFinish4112401")
end

function Quest41124:OnSubFailed4112401(arg1)
    print("OnSubFailed4112401")
end

function Quest41124:OnSubStart4112402(arg1)
    print("OnSubStart4112402")
    self:CreateQuestNpc(arg1, npcs.Npc1525Data.id, 1)
end

function Quest41124:OnSubFinish4112402(arg1)
    print("OnSubFinish4112402")
end

function Quest41124:OnSubFailed4112402(arg1)
    print("OnSubFailed4112402")
end

function Quest41124:OnSubStart4112403(arg1)
    print("OnSubStart4112403")
end

function Quest41124:OnSubFinish4112403(arg1)
    print("OnSubFinish4112403")
end

function Quest41124:OnSubFailed4112403(arg1)
    print("OnSubFailed4112403")
end

function Quest41124:OnSubStart4112404(arg1)
    print("OnSubStart4112404")
end

function Quest41124:OnSubFinish4112404(arg1)
    print("OnSubFinish4112404")
end

function Quest41124:OnSubFailed4112404(arg1)
    print("OnSubFailed4112404")
end

function Quest41124:OnSubStart4112405(arg1)
    print("OnSubStart4112405")
end

function Quest41124:OnSubFinish4112405(arg1)
    print("OnSubFinish4112405")
end

function Quest41124:OnSubFailed4112405(arg1)
    print("OnSubFailed4112405")
end

function Quest41124:OnSubStart4112498(arg1)
    print("OnSubStart4112498")
end

function Quest41124:OnSubFinish4112498(arg1)
    print("OnSubFinish4112498")
end

function Quest41124:OnSubFailed4112498(arg1)
    print("OnSubFailed4112498")
end

function Quest41124:OnSubStart4112499(arg1)
    print("OnSubStart4112499")
end

function Quest41124:OnSubFinish4112499(arg1)
    print("OnSubFinish4112499")
end

function Quest41124:OnSubFailed4112499(arg1)
    print("OnSubFailed4112499")
end

function Quest41124:OnSubStart4112406(arg1)
    print("OnSubStart4112406")
end

function Quest41124:OnSubFinish4112406(arg1)
    print("OnSubFinish4112406")
end

function Quest41124:OnSubFailed4112406(arg1)
    print("OnSubFailed4112406")
end

function Quest41124:OnSubStart4112497(arg1)
    print("OnSubStart4112497")
    self:SetQuestVarByMainId(0, 0)
end

function Quest41124:OnSubFinish4112497(arg1)
    print("OnSubFinish4112497")
end

function Quest41124:OnSubFailed4112497(arg1)
    print("OnSubFailed4112497")
end

function Quest41124:OnSubStart4112496(arg1)
    print("OnSubStart4112496")
    self:SetQuestVarByMainId(0, 1)
    actorMgr:CreateActorWithPos(datas.Q41124Trigger_.alias, datas.Q41124Trigger_.script, datas.Q41124Trigger_.id, 0, datas.Q41124Trigger_.point.pos, datas.Q41124Trigger_.point.rot, true, false, 3)
end

function Quest41124:OnSubFinish4112496(arg1)
    print("OnSubFinish4112496")
end

function Quest41124:OnSubFailed4112496(arg1)
    print("OnSubFailed4112496")
end

function Quest41124:OnSubStart4112407(arg1)
    print("OnSubStart4112407")
    self:SetQuestVarByMainId(0, 2)
end

function Quest41124:OnSubFinish4112407(arg1)
    print("OnSubFinish4112407")
end

function Quest41124:OnSubFailed4112407(arg1)
    print("OnSubFailed4112407")
end

function Quest41124:OnSubStart4112408(arg1)
    print("OnSubStart4112408")
end

function Quest41124:OnSubFinish4112408(arg1)
    print("OnSubFinish4112408")
end

function Quest41124:OnSubFailed4112408(arg1)
    print("OnSubFailed4112408")
end

return Quest41124
