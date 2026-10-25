require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303614_TriggerIn02 = class("Q303614_TriggerIn02", GadgetActorProxy)
Q303614_TriggerIn02.defaultAlias = "Q303614_TriggerIn02"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q303614_TriggerIn02:OnPostDataPrepare()
    print("Q303614_TriggerIn02 - OnPostDataPrepare")
    this = self
end

function Q303614_TriggerIn02:OnPostComponentPrepare()
    print("Q303614_TriggerIn02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10.5, 5, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q303614_TriggerIn02:TriggerIn()
    print("Q303614_TriggerIn02 - TriggerIn")
    actorMgr:GetActor("3036"):TransmitPlayerWithQuestIdByData(303614, 1, datas.TransmitData_Q303614, nil, nil, nil)
    this:DestroySelf()
end

function Q303614_TriggerIn02:PreTriggerIn()
    print("Q303614_TriggerIn02 - PreTriggerIn")
end

function Q303614_TriggerIn02:LightUpTriggerIn()
    print("Q303614_TriggerIn02 - LightUpTriggerIn")
end

function Q303614_TriggerIn02:TriggerOut()
    print("Q303614_TriggerIn02 - TriggerOut")
end

return Q303614_TriggerIn02
