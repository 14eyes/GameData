require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77659Trigger = class("Q77659Trigger", GadgetActorProxy)
Q77659Trigger.defaultAlias = "Q77659Trigger"
local Q77659ClientConfig = require("Quest/Client/Q77659ClientConfig")

local this
local subIDs = Q77659ClientConfig.SubIDs
local datas = Q77659ClientConfig.Datas
local points = Q77659ClientConfig.Points

function Q77659Trigger:OnPostDataPrepare()
    print("Q77659Trigger - OnPostDataPrepare")
    this = self
end

function Q77659Trigger:OnPostComponentPrepare()
    print("Q77659Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77659)
end

function Q77659Trigger:TriggerIn()
    print("Q77659Trigger - TriggerIn")
    actorMgr:GetActor("77659"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10960, questId = 7765907, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77659Trigger:PreTriggerIn()
    print("Q77659Trigger - PreTriggerIn")
end

function Q77659Trigger:LightUpTriggerIn()
    print("Q77659Trigger - LightUpTriggerIn")
end

function Q77659Trigger:TriggerOut()
    print("Q77659Trigger - TriggerOut")
end

return Q77659Trigger
