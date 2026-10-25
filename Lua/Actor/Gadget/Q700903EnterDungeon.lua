require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q700903EnterDungeon = class("Q700903EnterDungeon", GadgetActorProxy)
Q700903EnterDungeon.defaultAlias = "Q700903EnterDungeon"
local Q7009ClientConfig = require("Quest/Client/Q7009ClientConfig")

local this
local subIDs = Q7009ClientConfig.SubIDs
local datas = Q7009ClientConfig.Datas
local npcs = Q7009ClientConfig.Npcs
local points = Q7009ClientConfig.Points

function Q700903EnterDungeon:OnPostDataPrepare()
    print("Q700903EnterDungeon - OnPostDataPrepare")
    this = self
end

function Q700903EnterDungeon:OnPostComponentPrepare()
    print("Q700903EnterDungeon - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7009)
end

function Q700903EnterDungeon:TriggerIn()
    print("Q700903EnterDungeon - TriggerIn")
    this:DestroySelf()
end

function Q700903EnterDungeon:PreTriggerIn()
    print("Q700903EnterDungeon - PreTriggerIn")
end

function Q700903EnterDungeon:LightUpTriggerIn()
    print("Q700903EnterDungeon - LightUpTriggerIn")
end

function Q700903EnterDungeon:TriggerOut()
    print("Q700903EnterDungeon - TriggerOut")
end

return Q700903EnterDungeon
