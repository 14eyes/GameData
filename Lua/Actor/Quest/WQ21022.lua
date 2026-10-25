require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21022 = class("Quest21022", QuestActorProxy)
Quest21022.defaultAlias = "Quest21022"
local Q21022ClientConfig = require("Quest/Client/Q21022ClientConfig")

local subIDs = Q21022ClientConfig.SubIDs
local npc2211Data = Q21022ClientConfig.Npc2211Data
local NPCUtil = require("Actor/Npc/NPCUtil")

function Quest21022:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2102290"] = self.OnSubStart2102290
    self.subStartHandlers["2102202"] = self.OnSubStart2102202
    self.subStartHandlers["2102203"] = self.OnSubStart2102203
    self.subStartHandlers["2102204"] = self.OnSubStart2102204
    self.subStartHandlers["2102205"] = self.OnSubStart2102205
    self.subStartHandlers["2102206"] = self.OnSubStart2102206
    self.subStartHandlers["2102207"] = self.OnSubStart2102207
    self.subStartHandlers["2102208"] = self.OnSubStart2102208
    self.subStartHandlers["2102209"] = self.OnSubStart2102209
    self.subStartHandlers["2102210"] = self.OnSubStart2102210
    self.subStartHandlers["2102211"] = self.OnSubStart2102211
    self.subStartHandlers["2102212"] = self.OnSubStart2102212
    self.subStartHandlers["2102213"] = self.OnSubStart2102213
    self.subStartHandlers["2102214"] = self.OnSubStart2102214
end

function Quest21022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2102290"] = self.OnSubFinish2102290
    self.subFinishHandlers["2102202"] = self.OnSubFinish2102202
    self.subFinishHandlers["2102203"] = self.OnSubFinish2102203
    self.subFinishHandlers["2102204"] = self.OnSubFinish2102204
    self.subFinishHandlers["2102205"] = self.OnSubFinish2102205
    self.subFinishHandlers["2102206"] = self.OnSubFinish2102206
    self.subFinishHandlers["2102207"] = self.OnSubFinish2102207
    self.subFinishHandlers["2102208"] = self.OnSubFinish2102208
    self.subFinishHandlers["2102209"] = self.OnSubFinish2102209
    self.subFinishHandlers["2102210"] = self.OnSubFinish2102210
    self.subFinishHandlers["2102211"] = self.OnSubFinish2102211
    self.subFinishHandlers["2102212"] = self.OnSubFinish2102212
    self.subFinishHandlers["2102213"] = self.OnSubFinish2102213
    self.subFinishHandlers["2102214"] = self.OnSubFinish2102214
end

function Quest21022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2102290"] = self.OnSubFailed2102290
    self.subFailedHandlers["2102202"] = self.OnSubFailed2102202
    self.subFailedHandlers["2102203"] = self.OnSubFailed2102203
    self.subFailedHandlers["2102204"] = self.OnSubFailed2102204
    self.subFailedHandlers["2102205"] = self.OnSubFailed2102205
    self.subFailedHandlers["2102206"] = self.OnSubFailed2102206
    self.subFailedHandlers["2102207"] = self.OnSubFailed2102207
    self.subFailedHandlers["2102208"] = self.OnSubFailed2102208
    self.subFailedHandlers["2102209"] = self.OnSubFailed2102209
    self.subFailedHandlers["2102210"] = self.OnSubFailed2102210
    self.subFailedHandlers["2102211"] = self.OnSubFailed2102211
    self.subFailedHandlers["2102212"] = self.OnSubFailed2102212
    self.subFailedHandlers["2102213"] = self.OnSubFailed2102213
    self.subFailedHandlers["2102214"] = self.OnSubFailed2102214
end

function Quest21022:Start()
    print("Start")
end

function Quest21022:OnDestroy()
    print("OnDestroy")
end

function Quest21022:OnMainFinished(arg1)
    actorUtils.ForceRefreshDaily(npc2211Data.Alias)
end

function Quest21022:OnSubStart2102290(arg1)
    print("OnSubStart2102290")
end

function Quest21022:OnSubFinish2102290(arg1)
    print("OnSubFinish2102290")
end

function Quest21022:OnSubFailed2102290(arg1)
    print("OnSubFailed2102290")
end

function Quest21022:OnSubStart2102202(arg1)
    print("OnSubStart2102202")
end

function Quest21022:OnSubFinish2102202(arg1)
    print("OnSubFinish2102202")
end

function Quest21022:OnSubFailed2102202(arg1)
    print("OnSubFailed2102202")
end

function Quest21022:OnSubStart2102203(arg1)
    print("OnSubStart2102203")
end

function Quest21022:OnSubFinish2102203(arg1)
    print("OnSubFinish2102203")
end

function Quest21022:OnSubFailed2102203(arg1)
    print("OnSubFailed2102203")
end

function Quest21022:OnSubStart2102204(arg1)
    print("OnSubStart2102204")
end

function Quest21022:OnSubFinish2102204(arg1)
    print("OnSubFinish2102204")
end

function Quest21022:OnSubFailed2102204(arg1)
    print("OnSubFailed2102204")
end

function Quest21022:OnSubStart2102205(arg1)
    print("OnSubStart2102205")
end

function Quest21022:OnSubFinish2102205(arg1)
    print("OnSubFinish2102205")
end

function Quest21022:OnSubFailed2102205(arg1)
    print("OnSubFailed2102205")
end

function Quest21022:OnSubStart2102206(arg1)
    print("OnSubStart2102206")
end

function Quest21022:OnSubFinish2102206(arg1)
    print("OnSubFinish2102206")
end

function Quest21022:OnSubFailed2102206(arg1)
    print("OnSubFailed2102206")
end

function Quest21022:OnSubStart2102207(arg1)
    print("OnSubStart2102207")
end

function Quest21022:OnSubFinish2102207(arg1)
    print("OnSubFinish2102207")
end

function Quest21022:OnSubFailed2102207(arg1)
    print("OnSubFailed2102207")
end

function Quest21022:OnSubStart2102208(arg1)
    print("OnSubStart2102208")
end

function Quest21022:OnSubFinish2102208(arg1)
    print("OnSubFinish2102208")
end

function Quest21022:OnSubFailed2102208(arg1)
    print("OnSubFailed2102208")
end

function Quest21022:OnSubStart2102209(arg1)
    print("OnSubStart2102209")
end

function Quest21022:OnSubFinish2102209(arg1)
    print("OnSubFinish2102209")
end

function Quest21022:OnSubFailed2102209(arg1)
    print("OnSubFailed2102209")
end

function Quest21022:OnSubStart2102210(arg1)
    print("OnSubStart2102210")
end

function Quest21022:OnSubFinish2102210(arg1)
    print("OnSubFinish2102210")
end

function Quest21022:OnSubFailed2102210(arg1)
    print("OnSubFailed2102210")
end

function Quest21022:OnSubStart2102211(arg1)
    print("OnSubStart2102211")
end

function Quest21022:OnSubFinish2102211(arg1)
    print("OnSubFinish2102211")
end

function Quest21022:OnSubFailed2102211(arg1)
    print("OnSubFailed2102211")
end

function Quest21022:OnSubStart2102212(arg1)
    print("OnSubStart2102212")
end

function Quest21022:OnSubFinish2102212(arg1)
    print("OnSubFinish2102212")
end

function Quest21022:OnSubFailed2102212(arg1)
    print("OnSubFailed2102212")
end

function Quest21022:OnSubStart2102213(arg1)
    print("OnSubStart2102213")
end

function Quest21022:OnSubFinish2102213(arg1)
    print("OnSubFinish2102213")
end

function Quest21022:OnSubFailed2102213(arg1)
    print("OnSubFailed2102213")
end

function Quest21022:OnSubStart2102214(arg1)
    print("OnSubStart2102214")
end

function Quest21022:OnSubFailed2102214(arg1)
    print("OnSubFailed2102214")
end

function Quest21022:OnSubFinish2102214(arg1)
    print("OnSubFinish2102214")
    self:CallDelay(0.5, function(arg1)
        arg1:ShowBlackScreen(0.5, 2, 0.5)
    end)
end

return Quest21022
