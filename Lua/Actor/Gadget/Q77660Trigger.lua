require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77660Trigger = class("Q77660Trigger", GadgetActorProxy)
Q77660Trigger.defaultAlias = "Q77660Trigger"
local Q77660ClientConfig = require("Quest/Client/Q77660ClientConfig")

local this
local subIDs = Q77660ClientConfig.SubIDs
local datas = Q77660ClientConfig.Datas
local points = Q77660ClientConfig.Points

function Q77660Trigger:OnPostDataPrepare()
    print("Q77660Trigger - OnPostDataPrepare")
    this = self
end

function Q77660Trigger:OnPostComponentPrepare()
    print("Q77660Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77660)
end

function Q77660Trigger:TriggerIn()
    print("Q77660Trigger - TriggerIn")
    actorMgr:GetActor("77660"):PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2159, dungeonId = 10961, questId = 7766007, questPointCfgId = 1}, datas.__EmbedClientConfig_2, nil, nil)
    this:DestroySelf()
end

function Q77660Trigger:PreTriggerIn()
    print("Q77660Trigger - PreTriggerIn")
end

function Q77660Trigger:LightUpTriggerIn()
    print("Q77660Trigger - LightUpTriggerIn")
end

function Q77660Trigger:TriggerOut()
    print("Q77660Trigger - TriggerOut")
end

return Q77660Trigger
