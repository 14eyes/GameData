require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034ArcShangcheB = class("Q5034ArcShangcheB", GadgetActorProxy)
Q5034ArcShangcheB.defaultAlias = "Q5034ArcShangcheB"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034ArcShangcheB:OnPostDataPrepare()
    print("Q5034ArcShangcheB - OnPostDataPrepare")
    this = self
end

function Q5034ArcShangcheB:OnPostComponentPrepare()
    print("Q5034ArcShangcheB - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034ArcShangcheB:TriggerIn()
    print("Q5034ArcShangcheB - TriggerIn")
    actorMgr:GetActor("5034"):CallDelayByQuest("503402", 3, function(arg1)
        actorUtils.TryDoSkill(1)
        print("checkcheck")
        this:DestroySelf()
    end)
end

function Q5034ArcShangcheB:PreTriggerIn()
    print("Q5034ArcShangcheB - PreTriggerIn")
end

function Q5034ArcShangcheB:LightUpTriggerIn()
    print("Q5034ArcShangcheB - LightUpTriggerIn")
end

function Q5034ArcShangcheB:TriggerOut()
    print("Q5034ArcShangcheB - TriggerOut")
end

return Q5034ArcShangcheB
