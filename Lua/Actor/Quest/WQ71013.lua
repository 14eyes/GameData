require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71013 = class("Quest71013", QuestActorProxy)
Quest71013.defaultAlias = "Quest71013"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101316"] = self.OnSubStart7101316,
        ["7101317"] = self.OnSubStart7101317,
        ["7101301"] = self.OnSubStart7101301,
        ["7101318"] = self.OnSubStart7101318,
        ["7101315"] = self.OnSubStart7101315,
        ["7101319"] = self.OnSubStart7101319,
        ["7101302"] = self.OnSubStart7101302,
        ["7101303"] = self.OnSubStart7101303,
        ["7101304"] = self.OnSubStart7101304,
        ["7101305"] = self.OnSubStart7101305,
        ["7101306"] = self.OnSubStart7101306,
        ["7101307"] = self.OnSubStart7101307,
        ["7101308"] = self.OnSubStart7101308,
        ["7101309"] = self.OnSubStart7101309,
        ["7101310"] = self.OnSubStart7101310,
        ["7101311"] = self.OnSubStart7101311,
        ["7101312"] = self.OnSubStart7101312,
        ["7101313"] = self.OnSubStart7101313,
        ["7101314"] = self.OnSubStart7101314,
        ["7101320"] = self.OnSubStart7101320
    }
end

function Quest71013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101316"] = self.OnSubFinish7101316,
        ["7101317"] = self.OnSubFinish7101317,
        ["7101301"] = self.OnSubFinish7101301,
        ["7101318"] = self.OnSubFinish7101318,
        ["7101315"] = self.OnSubFinish7101315,
        ["7101319"] = self.OnSubFinish7101319,
        ["7101302"] = self.OnSubFinish7101302,
        ["7101303"] = self.OnSubFinish7101303,
        ["7101304"] = self.OnSubFinish7101304,
        ["7101305"] = self.OnSubFinish7101305,
        ["7101306"] = self.OnSubFinish7101306,
        ["7101307"] = self.OnSubFinish7101307,
        ["7101308"] = self.OnSubFinish7101308,
        ["7101309"] = self.OnSubFinish7101309,
        ["7101310"] = self.OnSubFinish7101310,
        ["7101311"] = self.OnSubFinish7101311,
        ["7101312"] = self.OnSubFinish7101312,
        ["7101313"] = self.OnSubFinish7101313,
        ["7101314"] = self.OnSubFinish7101314,
        ["7101320"] = self.OnSubFinish7101320
    }
end

function Quest71013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101316"] = self.OnSubFailed7101316,
        ["7101317"] = self.OnSubFailed7101317,
        ["7101301"] = self.OnSubFailed7101301,
        ["7101318"] = self.OnSubFailed7101318,
        ["7101315"] = self.OnSubFailed7101315,
        ["7101319"] = self.OnSubFailed7101319,
        ["7101302"] = self.OnSubFailed7101302,
        ["7101303"] = self.OnSubFailed7101303,
        ["7101304"] = self.OnSubFailed7101304,
        ["7101305"] = self.OnSubFailed7101305,
        ["7101306"] = self.OnSubFailed7101306,
        ["7101307"] = self.OnSubFailed7101307,
        ["7101308"] = self.OnSubFailed7101308,
        ["7101309"] = self.OnSubFailed7101309,
        ["7101310"] = self.OnSubFailed7101310,
        ["7101311"] = self.OnSubFailed7101311,
        ["7101312"] = self.OnSubFailed7101312,
        ["7101313"] = self.OnSubFailed7101313,
        ["7101314"] = self.OnSubFailed7101314,
        ["7101320"] = self.OnSubFailed7101320
    }
end

function Quest71013:Start()
    print("Start")
end

function Quest71013:OnDestroy()
    print("OnDestroy")
end

function Quest71013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71013:OnSubStart7101316(arg1)
    print("OnSubStart7101316")
end

function Quest71013:OnSubFinish7101316(arg1)
    print("OnSubFinish7101316")
end

function Quest71013:OnSubFailed7101316(arg1)
    print("OnSubFailed7101316")
end

function Quest71013:OnSubStart7101317(arg1)
    print("OnSubStart7101317")
end

function Quest71013:OnSubFinish7101317(arg1)
    print("OnSubFinish7101317")
end

function Quest71013:OnSubFailed7101317(arg1)
    print("OnSubFailed7101317")
end

function Quest71013:OnSubStart7101301(arg1)
    print("OnSubStart7101301")
end

function Quest71013:OnSubFinish7101301(arg1)
    print("OnSubFinish7101301")
end

function Quest71013:OnSubFailed7101301(arg1)
    print("OnSubFailed7101301")
end

function Quest71013:OnSubStart7101318(arg1)
    print("OnSubStart7101318")
end

function Quest71013:OnSubFinish7101318(arg1)
    print("OnSubFinish7101318")
end

function Quest71013:OnSubFailed7101318(arg1)
    print("OnSubFailed7101318")
end

function Quest71013:OnSubStart7101315(arg1)
    print("OnSubStart7101315")
end

function Quest71013:OnSubFinish7101315(arg1)
    print("OnSubFinish7101315")
end

function Quest71013:OnSubFailed7101315(arg1)
    print("OnSubFailed7101315")
end

function Quest71013:OnSubStart7101319(arg1)
    print("OnSubStart7101319")
end

function Quest71013:OnSubFinish7101319(arg1)
    print("OnSubFinish7101319")
end

function Quest71013:OnSubFailed7101319(arg1)
    print("OnSubFailed7101319")
end

function Quest71013:OnSubStart7101302(arg1)
    print("OnSubStart7101302")
    self:SetQuestVar(7101302, 1, 0)
end

function Quest71013:OnSubFinish7101302(arg1)
    print("OnSubFinish7101302")
    self:SetQuestVar(7101302, 4, 0)
end

function Quest71013:OnSubFailed7101302(arg1)
    print("OnSubFailed7101302")
end

function Quest71013:OnSubStart7101303(arg1)
    print("OnSubStart7101303")
end

function Quest71013:OnSubFinish7101303(arg1)
    local n = 0 + 1
    self:SetQuestVar(7101303, 3, n)
end

function Quest71013:OnSubFailed7101303(arg1)
    print("OnSubFailed7101303")
end

function Quest71013:OnSubStart7101304(arg1)
    print("OnSubStart7101304")
end

function Quest71013:OnSubFinish7101304(arg1)
    local n = self:GetQuestVar(7101303, 3) + 1
    self:SetQuestVar(7101304, 3, n)
end

function Quest71013:OnSubFailed7101304(arg1)
    print("OnSubFailed7101304")
end

function Quest71013:OnSubStart7101305(arg1)
    print("OnSubStart7101305")
end

function Quest71013:OnSubFinish7101305(arg1)
    local n = self:GetQuestVar(7101303, 3) + 1
    self:SetQuestVar(7101305, 3, n)
    self:SetQuestVar(7101305, 4, 1)
end

function Quest71013:OnSubFailed7101305(arg1)
    print("OnSubFailed7101305")
end

function Quest71013:OnSubStart7101306(arg1)
    print("OnSubStart7101306")
end

function Quest71013:OnSubFinish7101306(arg1)
    print("OnSubFinish7101306")
end

function Quest71013:OnSubFailed7101306(arg1)
    print("OnSubFailed7101306")
end

function Quest71013:OnSubStart7101307(arg1)
    print("OnSubStart7101307")
end

function Quest71013:OnSubFinish7101307(arg1)
    print("OnSubFinish7101307")
end

function Quest71013:OnSubFailed7101307(arg1)
    print("OnSubFailed7101307")
end

function Quest71013:OnSubStart7101308(arg1)
    print("OnSubStart7101308")
end

function Quest71013:OnSubFinish7101308(arg1)
    print("OnSubFinish7101308")
    self:SetQuestVar(7101308, 1, 1)
end

function Quest71013:OnSubFailed7101308(arg1)
    print("OnSubFailed7101308")
end

function Quest71013:OnSubStart7101309(arg1)
    print("OnSubStart7101309")
end

function Quest71013:OnSubFinish7101309(arg1)
    print("OnSubFinish7101309")
    self:SetQuestVar(7101309, 1, 1)
end

function Quest71013:OnSubFailed7101309(arg1)
    print("OnSubFailed7101309")
end

function Quest71013:OnSubStart7101310(arg1)
    print("OnSubStart7101310")
end

function Quest71013:OnSubFinish7101310(arg1)
    print("OnSubFinish7101310")
end

function Quest71013:OnSubFailed7101310(arg1)
    print("OnSubFailed7101310")
end

function Quest71013:OnSubStart7101311(arg1)
    print("OnSubStart7101311")
    self:SetQuestVar(7101311, 1, 2)
end

function Quest71013:OnSubFinish7101311(arg1)
    print("OnSubFinish7101311")
end

function Quest71013:OnSubFailed7101311(arg1)
    print("OnSubFailed7101311")
end

function Quest71013:OnSubStart7101312(arg1)
    print("OnSubStart7101312")
end

function Quest71013:OnSubFinish7101312(arg1)
    local n = 0 + 1
    self:SetQuestVar(7101312, 2, n)
end

function Quest71013:OnSubFailed7101312(arg1)
    print("OnSubFailed7101312")
end

function Quest71013:OnSubStart7101313(arg1)
    print("OnSubStart7101313")
end

function Quest71013:OnSubFinish7101313(arg1)
    local n = self:GetQuestVar(7101312, 2) + 1
    self:SetQuestVar(7101313, 2, n)
end

function Quest71013:OnSubFailed7101313(arg1)
    print("OnSubFailed7101313")
end

function Quest71013:OnSubStart7101314(arg1)
    print("OnSubStart7101314")
end

function Quest71013:OnSubFinish7101314(arg1)
    local n = self:GetQuestVar(7101312, 2) + 1
    self:SetQuestVar(7101314, 2, n)
    self:SetQuestVar(7101314, 4, 1)
end

function Quest71013:OnSubFailed7101314(arg1)
    print("OnSubFailed7101314")
end

function Quest71013:OnSubStart7101320(arg1)
    print("OnSubStart7101320")
end

function Quest71013:OnSubFinish7101320(arg1)
    print("OnSubFinish7101320")
end

function Quest71013:OnSubFailed7101320(arg1)
    print("OnSubFailed7101320")
end

return Quest71013
