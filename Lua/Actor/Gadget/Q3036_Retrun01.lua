require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3036_Retrun01 = class("Q3036_Retrun01", GadgetActorProxy)
Q3036_Retrun01.defaultAlias = "Q3036_Retrun01"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q3036_Retrun01:OnPostDataPrepare()
    print("Q3036_Retrun01 - OnPostDataPrepare")
    this = self
end

function Q3036_Retrun01:OnPostComponentPrepare()
    print("Q3036_Retrun01 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 40, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q3036_Retrun01:TriggerIn()
    print("Q3036_Retrun01 - TriggerIn")
    actorMgr:GetActor("3036"):TransmitPlayerWithQuestIdByData(303602, 1, datas.TransmitData_Retrun01, nil, nil, nil)
end

function Q3036_Retrun01:PreTriggerIn()
    print("Q3036_Retrun01 - PreTriggerIn")
end

function Q3036_Retrun01:LightUpTriggerIn()
    print("Q3036_Retrun01 - LightUpTriggerIn")
end

function Q3036_Retrun01:TriggerOut()
    print("Q3036_Retrun01 - TriggerOut")
end

return Q3036_Retrun01
