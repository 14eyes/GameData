require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79005 = class("Quest79005", QuestActorProxy)
Quest79005.defaultAlias = "Quest79005"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest79005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900506"] = self.OnSubStart7900506,
        ["7900501"] = self.OnSubStart7900501,
        ["7900502"] = self.OnSubStart7900502,
        ["7900504"] = self.OnSubStart7900504,
        ["7900503"] = self.OnSubStart7900503,
        ["7900505"] = self.OnSubStart7900505,
        ["7900507"] = self.OnSubStart7900507
    }
end

function Quest79005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900506"] = self.OnSubFinish7900506,
        ["7900501"] = self.OnSubFinish7900501,
        ["7900502"] = self.OnSubFinish7900502,
        ["7900504"] = self.OnSubFinish7900504,
        ["7900503"] = self.OnSubFinish7900503,
        ["7900505"] = self.OnSubFinish7900505,
        ["7900507"] = self.OnSubFinish7900507
    }
end

function Quest79005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900506"] = self.OnSubFailed7900506,
        ["7900501"] = self.OnSubFailed7900501,
        ["7900502"] = self.OnSubFailed7900502,
        ["7900504"] = self.OnSubFailed7900504,
        ["7900503"] = self.OnSubFailed7900503,
        ["7900505"] = self.OnSubFailed7900505,
        ["7900507"] = self.OnSubFailed7900507
    }
end

function Quest79005:Start()
    print("Start")
end

function Quest79005:OnDestroy()
    print("OnDestroy")
end

function Quest79005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79005:OnSubStart7900506(arg1)
    print("OnSubStart7900506")
end

function Quest79005:OnSubFinish7900506(arg1)
    print("OnSubFinish7900506")
end

function Quest79005:OnSubFailed7900506(arg1)
    print("OnSubFailed7900506")
end

function Quest79005:OnSubStart7900501(arg1)
    print("OnSubStart7900501")
end

function Quest79005:OnSubFinish7900501(arg1)
    print("OnSubFinish7900501")
end

function Quest79005:OnSubFailed7900501(arg1)
    print("OnSubFailed7900501")
end

function Quest79005:OnSubStart7900502(arg1)
    print("OnSubStart7900502")
end

function Quest79005:OnSubFinish7900502(arg1)
    print("OnSubFinish7900502")
end

function Quest79005:OnSubFailed7900502(arg1)
    print("OnSubFailed7900502")
end

function Quest79005:OnSubStart7900504(arg1)
    print("OnSubStart7900504")
end

function Quest79005:OnSubFinish7900504(arg1)
    print("OnSubFinish7900504")
end

function Quest79005:OnSubFailed7900504(arg1)
    print("OnSubFailed7900504")
end

function Quest79005:OnSubStart7900503(arg1)
    print("OnSubStart7900503")
end

function Quest79005:OnSubFinish7900503(arg1)
    print("OnSubFinish7900503")
end

function Quest79005:OnSubFailed7900503(arg1)
    print("OnSubFailed7900503")
end

function Quest79005:OnSubStart7900505(arg1)
    print("OnSubStart7900505")
end

function Quest79005:OnSubFinish7900505(arg1)
    print("OnSubFinish7900505")
end

function Quest79005:OnSubFailed7900505(arg1)
    print("OnSubFailed7900505")
end

function Quest79005:OnSubStart7900507(arg1)
    print("OnSubStart7900507")
end

function Quest79005:OnSubFinish7900507(arg1)
    print("OnSubFinish7900507")
end

function Quest79005:OnSubFailed7900507(arg1)
    print("OnSubFailed7900507")
end

function Quest79005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Talk 7900501 Invoke")
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            self:ShowReadingDialog(100845)
        end
    end
end

return Quest79005
