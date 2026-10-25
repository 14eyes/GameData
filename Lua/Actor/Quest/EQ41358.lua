require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41358 = class("Quest41358", QuestActorProxy)
Quest41358.defaultAlias = "Quest41358"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41358:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41358:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4135801"] = self.OnSubStart4135801,
        ["4135802"] = self.OnSubStart4135802,
        ["4135803"] = self.OnSubStart4135803,
        ["4135808"] = self.OnSubStart4135808,
        ["4135804"] = self.OnSubStart4135804,
        ["4135809"] = self.OnSubStart4135809,
        ["4135805"] = self.OnSubStart4135805,
        ["4135810"] = self.OnSubStart4135810,
        ["4135806"] = self.OnSubStart4135806,
        ["4135807"] = self.OnSubStart4135807
    }
end

function Quest41358:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4135801"] = self.OnSubFinish4135801,
        ["4135802"] = self.OnSubFinish4135802,
        ["4135803"] = self.OnSubFinish4135803,
        ["4135808"] = self.OnSubFinish4135808,
        ["4135804"] = self.OnSubFinish4135804,
        ["4135809"] = self.OnSubFinish4135809,
        ["4135805"] = self.OnSubFinish4135805,
        ["4135810"] = self.OnSubFinish4135810,
        ["4135806"] = self.OnSubFinish4135806,
        ["4135807"] = self.OnSubFinish4135807
    }
end

function Quest41358:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4135801"] = self.OnSubFailed4135801,
        ["4135802"] = self.OnSubFailed4135802,
        ["4135803"] = self.OnSubFailed4135803,
        ["4135808"] = self.OnSubFailed4135808,
        ["4135804"] = self.OnSubFailed4135804,
        ["4135809"] = self.OnSubFailed4135809,
        ["4135805"] = self.OnSubFailed4135805,
        ["4135810"] = self.OnSubFailed4135810,
        ["4135806"] = self.OnSubFailed4135806,
        ["4135807"] = self.OnSubFailed4135807
    }
end

function Quest41358:Start()
    print("Start")
end

function Quest41358:OnDestroy()
    print("OnDestroy")
end

function Quest41358:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41358:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41358:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41358:OnSubStart4135801(arg1)
    print("OnSubStart4135801")
end

function Quest41358:OnSubFinish4135801(arg1)
    print("OnSubFinish4135801")
end

function Quest41358:OnSubFailed4135801(arg1)
    print("OnSubFailed4135801")
end

function Quest41358:OnSubStart4135802(arg1)
    print("OnSubStart4135802")
end

function Quest41358:OnSubFinish4135802(arg1)
    print("OnSubFinish4135802")
end

function Quest41358:OnSubFailed4135802(arg1)
    print("OnSubFailed4135802")
end

function Quest41358:OnSubStart4135803(arg1)
    print("OnSubStart4135803")
end

function Quest41358:OnSubFinish4135803(arg1)
    print("OnSubFinish4135803")
end

function Quest41358:OnSubFailed4135803(arg1)
    print("OnSubFailed4135803")
end

function Quest41358:OnSubStart4135808(arg1)
    print("OnSubStart4135808")
end

function Quest41358:OnSubFinish4135808(arg1)
    print("OnSubFinish4135808")
end

function Quest41358:OnSubFailed4135808(arg1)
    print("OnSubFailed4135808")
end

function Quest41358:OnSubStart4135804(arg1)
    print("OnSubStart4135804")
end

function Quest41358:OnSubFinish4135804(arg1)
    print("OnSubFinish4135804")
end

function Quest41358:OnSubFailed4135804(arg1)
    print("OnSubFailed4135804")
end

function Quest41358:OnSubStart4135809(arg1)
    print("OnSubStart4135809")
end

function Quest41358:OnSubFinish4135809(arg1)
    print("OnSubFinish4135809")
end

function Quest41358:OnSubFailed4135809(arg1)
    print("OnSubFailed4135809")
end

function Quest41358:OnSubStart4135805(arg1)
    print("OnSubStart4135805")
end

function Quest41358:OnSubFinish4135805(arg1)
    print("OnSubFinish4135805")
end

function Quest41358:OnSubFailed4135805(arg1)
    print("OnSubFailed4135805")
end

function Quest41358:OnSubStart4135810(arg1)
    print("OnSubStart4135810")
end

function Quest41358:OnSubFinish4135810(arg1)
    print("OnSubFinish4135810")
end

function Quest41358:OnSubFailed4135810(arg1)
    print("OnSubFailed4135810")
end

function Quest41358:OnSubStart4135806(arg1)
    print("OnSubStart4135806")
end

function Quest41358:OnSubFinish4135806(arg1)
    print("OnSubFinish4135806")
end

function Quest41358:OnSubFailed4135806(arg1)
    print("OnSubFailed4135806")
end

function Quest41358:OnSubStart4135807(arg1)
    print("OnSubStart4135807")
end

function Quest41358:OnSubFinish4135807(arg1)
    print("OnSubFinish4135807")
end

function Quest41358:OnSubFailed4135807(arg1)
    print("OnSubFailed4135807")
end

return Quest41358
