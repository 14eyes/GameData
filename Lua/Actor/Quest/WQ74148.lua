require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74148 = class("Quest74148", QuestActorProxy)
Quest74148.defaultAlias = "Quest74148"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74148:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414820"] = self.OnSubStart7414820,
        ["7414801"] = self.OnSubStart7414801,
        ["7414805"] = self.OnSubStart7414805,
        ["7414807"] = self.OnSubStart7414807,
        ["7414809"] = self.OnSubStart7414809,
        ["7414811"] = self.OnSubStart7414811,
        ["7414813"] = self.OnSubStart7414813,
        ["7414815"] = self.OnSubStart7414815,
        ["7414817"] = self.OnSubStart7414817,
        ["7414802"] = self.OnSubStart7414802,
        ["7414806"] = self.OnSubStart7414806,
        ["7414808"] = self.OnSubStart7414808,
        ["7414810"] = self.OnSubStart7414810,
        ["7414812"] = self.OnSubStart7414812,
        ["7414814"] = self.OnSubStart7414814,
        ["7414816"] = self.OnSubStart7414816,
        ["7414818"] = self.OnSubStart7414818,
        ["7414803"] = self.OnSubStart7414803,
        ["7414821"] = self.OnSubStart7414821,
        ["7414804"] = self.OnSubStart7414804
    }
end

function Quest74148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414820"] = self.OnSubFinish7414820,
        ["7414801"] = self.OnSubFinish7414801,
        ["7414805"] = self.OnSubFinish7414805,
        ["7414807"] = self.OnSubFinish7414807,
        ["7414809"] = self.OnSubFinish7414809,
        ["7414811"] = self.OnSubFinish7414811,
        ["7414813"] = self.OnSubFinish7414813,
        ["7414815"] = self.OnSubFinish7414815,
        ["7414817"] = self.OnSubFinish7414817,
        ["7414802"] = self.OnSubFinish7414802,
        ["7414806"] = self.OnSubFinish7414806,
        ["7414808"] = self.OnSubFinish7414808,
        ["7414810"] = self.OnSubFinish7414810,
        ["7414812"] = self.OnSubFinish7414812,
        ["7414814"] = self.OnSubFinish7414814,
        ["7414816"] = self.OnSubFinish7414816,
        ["7414818"] = self.OnSubFinish7414818,
        ["7414803"] = self.OnSubFinish7414803,
        ["7414821"] = self.OnSubFinish7414821,
        ["7414804"] = self.OnSubFinish7414804
    }
end

function Quest74148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74148:Start()
    print("Start")
end

function Quest74148:OnDestroy()
    print("OnDestroy")
end

function Quest74148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74148:OnSubStart7414820(arg1)
    print("OnSubStart7414820")
end

function Quest74148:OnSubFinish7414820(arg1)
    print("OnSubFinish7414820")
end

function Quest74148:OnSubStart7414801(arg1)
    print("OnSubStart7414801")
end

function Quest74148:OnSubFinish7414801(arg1)
    print("OnSubFinish7414801")
end

function Quest74148:OnSubStart7414805(arg1)
    print("OnSubStart7414805")
end

function Quest74148:OnSubFinish7414805(arg1)
    print("OnSubFinish7414805")
end

function Quest74148:OnSubStart7414807(arg1)
    print("OnSubStart7414807")
end

function Quest74148:OnSubFinish7414807(arg1)
    print("OnSubFinish7414807")
end

function Quest74148:OnSubStart7414809(arg1)
    print("OnSubStart7414809")
end

function Quest74148:OnSubFinish7414809(arg1)
    print("OnSubFinish7414809")
end

function Quest74148:OnSubStart7414811(arg1)
    print("OnSubStart7414811")
end

function Quest74148:OnSubFinish7414811(arg1)
    print("OnSubFinish7414811")
end

function Quest74148:OnSubStart7414813(arg1)
    print("OnSubStart7414813")
end

function Quest74148:OnSubFinish7414813(arg1)
    print("OnSubFinish7414813")
end

function Quest74148:OnSubStart7414815(arg1)
    print("OnSubStart7414815")
end

function Quest74148:OnSubFinish7414815(arg1)
    print("OnSubFinish7414815")
end

function Quest74148:OnSubStart7414817(arg1)
    print("OnSubStart7414817")
end

function Quest74148:OnSubFinish7414817(arg1)
    print("OnSubFinish7414817")
end

function Quest74148:OnSubStart7414802(arg1)
    print("OnSubStart7414802")
end

function Quest74148:OnSubFinish7414802(arg1)
    print("OnSubFinish7414802")
end

function Quest74148:OnSubStart7414806(arg1)
    print("OnSubStart7414806")
end

function Quest74148:OnSubFinish7414806(arg1)
    print("OnSubFinish7414806")
end

function Quest74148:OnSubStart7414808(arg1)
    print("OnSubStart7414808")
end

function Quest74148:OnSubFinish7414808(arg1)
    print("OnSubFinish7414808")
end

function Quest74148:OnSubStart7414810(arg1)
    print("OnSubStart7414810")
end

function Quest74148:OnSubFinish7414810(arg1)
    print("OnSubFinish7414810")
end

function Quest74148:OnSubStart7414812(arg1)
    print("OnSubStart7414812")
end

function Quest74148:OnSubFinish7414812(arg1)
    print("OnSubFinish7414812")
end

function Quest74148:OnSubStart7414814(arg1)
    print("OnSubStart7414814")
    this:CreateQuestNpc(arg1, npcs.Npc21369Data.id, 0)
end

function Quest74148:OnSubFinish7414814(arg1)
    print("OnSubFinish7414814")
end

function Quest74148:OnSubStart7414816(arg1)
    print("OnSubStart7414816")
end

function Quest74148:OnSubFinish7414816(arg1)
    print("OnSubFinish7414816")
end

function Quest74148:OnSubStart7414818(arg1)
    print("OnSubStart7414818")
end

function Quest74148:OnSubFinish7414818(arg1)
    print("OnSubFinish7414818")
end

function Quest74148:OnSubStart7414803(arg1)
    print("OnSubStart7414803")
end

function Quest74148:OnSubFinish7414803(arg1)
    print("OnSubFinish7414803")
end

function Quest74148:OnSubStart7414821(arg1)
    print("OnSubStart7414821")
end

function Quest74148:OnSubFinish7414821(arg1)
    print("OnSubFinish7414821")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest74148:OnSubStart7414804(arg1)
    print("OnSubStart7414804")
end

function Quest74148:OnSubFinish7414804(arg1)
    print("OnSubFinish7414804")
    this:SafeDestroyQuestNpc(npcs.Npc21369Data.alias, 3)
end

return Quest74148
