require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20502 = class("Quest20502", QuestActorProxy)
Quest20502.defaultAlias = "Quest20502"
local Q20502ClientConfig = require("Quest/Client/Q20502ClientConfig")

function Quest20502:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2050201"] = self.OnSubStart2050201
    self.subStartHandlers["2050202"] = self.OnSubStart2050202
end

function Quest20502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2050201"] = self.OnSubFinish2050201
    self.subFinishHandlers["2050202"] = self.OnSubFinish2050202
end

function Quest20502:OnSubStart2050201(arg1)
    print("2050205 finish:CreatNPC & Talk")
    globalActor:StartGuide("GuideAdventureDungeon")
end

function Quest20502:OnSubFinish2050202(arg1)
    print("2050205 finish:CreatNPC & Talk")
    globalActor:StartGuide("GuideProud")
end

function Quest20502:Start() end
function Quest20502:OnDestroy() end
return Quest20502
