require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20500 = class("Quest20500", QuestActorProxy)
Quest20500.defaultAlias = "Quest20500"
local Q20500ClientConfig = require("Quest/Client/Q20500ClientConfig")

function Quest20500:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050001"] = self.OnSubStart2050001
    self.subStartHandlers["2050002"] = self.OnSubStart2050002
    self.subStartHandlers["2050003"] = self.OnSubStart2050003
end

function Quest20500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050001"] = self.OnSubFinish2050001
    self.subFinishHandlers["2050002"] = self.OnSubFinish2050002
    self.subFinishHandlers["2050003"] = self.OnSubFinish2050003
end

function Quest20500:OnSubStart2050003(arg1)
    print("2050003 Finish: GuideWeaponUpgradeiOS")
    globalActor:StartGuide("GuideWeaponUpgradeiOS")
end

function Quest20500:Start() end
function Quest20500:OnDestroy() end
return Quest20500
