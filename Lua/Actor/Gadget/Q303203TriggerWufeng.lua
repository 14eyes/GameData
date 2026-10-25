require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303203TriggerWufeng = class("Q303203TriggerWufeng", GadgetActorProxy)
Q303203TriggerWufeng.defaultAlias = "Q303203TriggerWufeng"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303203TriggerWufeng:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303203TriggerWufeng:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q303203TriggerWufeng:TriggerIn()
    print("TriggerIn")
end

function Q303203TriggerWufeng:PreTriggerIn()
    print("PreTriggerIn")
end

function Q303203TriggerWufeng:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("3032"):ShowBlackScreenWithDialogText(0, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("3032"):RequestInteraction(npcs.Npc12991Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q303203TriggerWufeng:TriggerOut()
    print("TriggerOut")
end

return Q303203TriggerWufeng
