require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79026 = class("Quest79026", QuestActorProxy)
Quest79026.defaultAlias = "Quest79026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902601"] = self.OnSubStart7902601,
        ["7902602"] = self.OnSubStart7902602,
        ["7902613"] = self.OnSubStart7902613,
        ["7902608"] = self.OnSubStart7902608,
        ["7902609"] = self.OnSubStart7902609,
        ["7902610"] = self.OnSubStart7902610,
        ["7902603"] = self.OnSubStart7902603,
        ["7902621"] = self.OnSubStart7902621,
        ["7902614"] = self.OnSubStart7902614,
        ["7902615"] = self.OnSubStart7902615,
        ["7902616"] = self.OnSubStart7902616,
        ["7902612"] = self.OnSubStart7902612,
        ["7902617"] = self.OnSubStart7902617,
        ["7902618"] = self.OnSubStart7902618,
        ["7902604"] = self.OnSubStart7902604,
        ["7902606"] = self.OnSubStart7902606,
        ["7902605"] = self.OnSubStart7902605,
        ["7902607"] = self.OnSubStart7902607,
        ["7902619"] = self.OnSubStart7902619,
        ["7902620"] = self.OnSubStart7902620
    }
end

function Quest79026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902601"] = self.OnSubFinish7902601,
        ["7902602"] = self.OnSubFinish7902602,
        ["7902613"] = self.OnSubFinish7902613,
        ["7902608"] = self.OnSubFinish7902608,
        ["7902609"] = self.OnSubFinish7902609,
        ["7902610"] = self.OnSubFinish7902610,
        ["7902603"] = self.OnSubFinish7902603,
        ["7902621"] = self.OnSubFinish7902621,
        ["7902614"] = self.OnSubFinish7902614,
        ["7902615"] = self.OnSubFinish7902615,
        ["7902616"] = self.OnSubFinish7902616,
        ["7902612"] = self.OnSubFinish7902612,
        ["7902617"] = self.OnSubFinish7902617,
        ["7902618"] = self.OnSubFinish7902618,
        ["7902604"] = self.OnSubFinish7902604,
        ["7902606"] = self.OnSubFinish7902606,
        ["7902605"] = self.OnSubFinish7902605,
        ["7902607"] = self.OnSubFinish7902607,
        ["7902619"] = self.OnSubFinish7902619,
        ["7902620"] = self.OnSubFinish7902620
    }
end

function Quest79026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79026:Start()
    print("Start")
end

function Quest79026:OnDestroy()
    print("OnDestroy")
end

function Quest79026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79026:OnSubStart7902601(arg1)
    print("OnSubStart7902601")
    actorMgr:CreateActorWithPos("Q79026Trigger", "Actor/Gadget/Q79026Trigger", 70900002, 0, {x = 582.81, y = 263.04, z = -512.03}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest79026:OnSubFinish7902601(arg1)
    print("OnSubFinish7902601")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1176)
    end)
end

function Quest79026:OnSubStart7902602(arg1)
    print("OnSubStart7902602")
end

function Quest79026:OnSubFinish7902602(arg1)
    print("OnSubFinish7902602")
end

function Quest79026:OnSubStart7902613(arg1)
    print("OnSubStart7902613")
end

function Quest79026:OnSubFinish7902613(arg1)
    print("OnSubFinish7902613")
end

function Quest79026:OnSubStart7902608(arg1)
    print("OnSubStart7902608")
end

function Quest79026:OnSubFinish7902608(arg1)
    print("OnSubFinish7902608")
end

function Quest79026:OnSubStart7902609(arg1)
    print("OnSubStart7902609")
end

function Quest79026:OnSubFinish7902609(arg1)
    print("OnSubFinish7902609")
end

function Quest79026:OnSubStart7902610(arg1)
    print("OnSubStart7902610")
end

function Quest79026:OnSubFinish7902610(arg1)
    print("OnSubFinish7902610")
end

function Quest79026:OnSubStart7902603(arg1)
    print("OnSubStart7902603")
end

function Quest79026:OnSubFinish7902603(arg1)
    print("OnSubFinish7902603")
end

function Quest79026:OnSubStart7902621(arg1)
    print("OnSubStart7902621")
end

function Quest79026:OnSubFinish7902621(arg1)
    print("OnSubFinish7902621")
end

function Quest79026:OnSubStart7902614(arg1)
    print("OnSubStart7902614")
end

function Quest79026:OnSubFinish7902614(arg1)
    print("OnSubFinish7902614")
end

function Quest79026:OnSubStart7902615(arg1)
    print("OnSubStart7902615")
end

function Quest79026:OnSubFinish7902615(arg1)
    print("OnSubFinish7902615")
end

function Quest79026:OnSubStart7902616(arg1)
    print("OnSubStart7902616")
end

function Quest79026:OnSubFinish7902616(arg1)
    print("OnSubFinish7902616")
end

function Quest79026:OnSubStart7902612(arg1)
    print("OnSubStart7902612")
end

function Quest79026:OnSubFinish7902612(arg1)
    print("OnSubFinish7902612")
end

function Quest79026:OnSubStart7902617(arg1)
    print("OnSubStart7902617")
end

function Quest79026:OnSubFinish7902617(arg1)
    print("OnSubFinish7902617")
end

function Quest79026:OnSubStart7902618(arg1)
    print("OnSubStart7902618")
end

function Quest79026:OnSubFinish7902618(arg1)
    print("OnSubFinish7902618")
end

function Quest79026:OnSubStart7902604(arg1)
    print("OnSubStart7902604")
end

function Quest79026:OnSubFinish7902604(arg1)
    print("OnSubFinish7902604")
end

function Quest79026:OnSubStart7902606(arg1)
    print("OnSubStart7902606")
end

function Quest79026:OnSubFinish7902606(arg1)
    print("OnSubFinish7902606")
end

function Quest79026:OnSubStart7902605(arg1)
    print("OnSubStart7902605")
end

function Quest79026:OnSubFinish7902605(arg1)
    print("OnSubFinish7902605")
end

function Quest79026:OnSubStart7902607(arg1)
    print("OnSubStart7902607")
end

function Quest79026:OnSubFinish7902607(arg1)
    print("OnSubFinish7902607")
end

function Quest79026:OnSubStart7902619(arg1)
    print("OnSubStart7902619")
    if actorUtils.IsMalePlayer() then
        self:FinishQuestID(false, 7902619)
    end
end

function Quest79026:OnSubFinish7902619(arg1)
    print("OnSubFinish7902619")
end

function Quest79026:OnSubStart7902620(arg1)
    print("OnSubStart7902620")
    if actorUtils.IsMalePlayer() then
    else
        self:FinishQuestID(false, 7902620)
    end
end

function Quest79026:OnSubFinish7902620(arg1)
    print("OnSubFinish7902620")
end

return Quest79026
