require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q503309Shangche = class("Q503309Shangche", GadgetActorProxy)
Q503309Shangche.defaultAlias = "Q503309Shangche"
local Q5033ClientConfig = require("Quest/Client/Q5033ClientConfig")

local this
local subIDs = Q5033ClientConfig.SubIDs
local datas = Q5033ClientConfig.Datas
local npcs = Q5033ClientConfig.Npcs
local points = Q5033ClientConfig.Points

function Q503309Shangche:OnPostDataPrepare()
    print("Q503309Shangche - OnPostDataPrepare")
    this = self
end

function Q503309Shangche:OnPostComponentPrepare()
    print("Q503309Shangche - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5033)
end

function Q503309Shangche:TriggerIn()
    print("Q503309Shangche - TriggerIn")
    actorUtils.TryDoSkill(1)
    this:DestroySelf()
end

function Q503309Shangche:PreTriggerIn()
    print("Q503309Shangche - PreTriggerIn")
end

function Q503309Shangche:LightUpTriggerIn()
    print("Q503309Shangche - LightUpTriggerIn")
end

function Q503309Shangche:TriggerOut()
    print("Q503309Shangche - TriggerOut")
end

return Q503309Shangche
