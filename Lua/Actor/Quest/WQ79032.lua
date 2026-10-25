require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79032 = class("Quest79032", QuestActorProxy)
Quest79032.defaultAlias = "Quest79032"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903201"] = self.OnSubStart7903201,
        ["7903202"] = self.OnSubStart7903202,
        ["7903203"] = self.OnSubStart7903203,
        ["7903204"] = self.OnSubStart7903204,
        ["7903209"] = self.OnSubStart7903209,
        ["7903205"] = self.OnSubStart7903205,
        ["7903206"] = self.OnSubStart7903206,
        ["7903207"] = self.OnSubStart7903207,
        ["7903208"] = self.OnSubStart7903208,
        ["7903210"] = self.OnSubStart7903210
    }
end

function Quest79032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903201"] = self.OnSubFinish7903201,
        ["7903202"] = self.OnSubFinish7903202,
        ["7903203"] = self.OnSubFinish7903203,
        ["7903204"] = self.OnSubFinish7903204,
        ["7903209"] = self.OnSubFinish7903209,
        ["7903205"] = self.OnSubFinish7903205,
        ["7903206"] = self.OnSubFinish7903206,
        ["7903207"] = self.OnSubFinish7903207,
        ["7903208"] = self.OnSubFinish7903208,
        ["7903210"] = self.OnSubFinish7903210
    }
end

function Quest79032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79032:Start()
    print("Start")
end

function Quest79032:OnDestroy()
    print("OnDestroy")
end

function Quest79032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79032:OnSubStart7903201(arg1)
    print("OnSubStart7903201")
end

function Quest79032:OnSubFinish7903201(arg1)
    print("OnSubFinish7903201")
    self:TransmitPlayerById(arg1, 1)
end

function Quest79032:OnSubStart7903202(arg1)
    print("OnSubStart7903202")
end

function Quest79032:OnSubFinish7903202(arg1)
    print("OnSubFinish7903202")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 7903202, 2)
end

function Quest79032:OnSubStart7903203(arg1)
    print("OnSubStart7903203")
end

function Quest79032:OnSubFinish7903203(arg1)
    print("OnSubFinish7903203")
end

function Quest79032:OnSubStart7903204(arg1)
    print("OnSubStart7903204")
end

function Quest79032:OnSubFinish7903204(arg1)
    print("OnSubFinish7903204")
    globalActor:PlayerEnterDungeonPoint(29, 1139, 7903204, 3)
end

function Quest79032:OnSubStart7903209(arg1)
    print("OnSubStart7903209")
end

function Quest79032:OnSubFinish7903209(arg1)
    print("OnSubFinish7903209")
end

function Quest79032:OnSubStart7903205(arg1)
    print("OnSubStart7903205")
end

function Quest79032:OnSubFinish7903205(arg1)
    print("OnSubFinish7903205")
    self:TransmitPlayerById(arg1, 1)
end

function Quest79032:OnSubStart7903206(arg1)
    print("OnSubStart7903206")
end

function Quest79032:OnSubFinish7903206(arg1)
    print("OnSubFinish7903206")
    globalActor:PlayerEnterDungeonPoint(31, 1140, 7903206, 2)
end

function Quest79032:OnSubStart7903207(arg1)
    print("OnSubStart7903207")
end

function Quest79032:OnSubFinish7903207(arg1)
    print("OnSubFinish7903207")
end

function Quest79032:OnSubStart7903208(arg1)
    print("OnSubStart7903208")
end

function Quest79032:OnSubFinish7903208(arg1)
    print("OnSubFinish7903208")
    globalActor:PlayerEnterDungeonPoint(29, 1139, 7903208, 3)
end

function Quest79032:OnSubStart7903210(arg1)
    print("OnSubStart7903210")
end

function Quest79032:OnSubFinish7903210(arg1)
    print("OnSubFinish7903210")
end

return Quest79032
