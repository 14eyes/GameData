require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79056 = class("Quest79056", QuestActorProxy)
Quest79056.defaultAlias = "Quest79056"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest79056:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905601"] = self.OnSubStart7905601,
        ["7905609"] = self.OnSubStart7905609,
        ["7905610"] = self.OnSubStart7905610,
        ["7905611"] = self.OnSubStart7905611,
        ["7905621"] = self.OnSubStart7905621,
        ["7905624"] = self.OnSubStart7905624,
        ["7905602"] = self.OnSubStart7905602,
        ["7905605"] = self.OnSubStart7905605,
        ["7905615"] = self.OnSubStart7905615,
        ["7905616"] = self.OnSubStart7905616,
        ["7905619"] = self.OnSubStart7905619,
        ["7905622"] = self.OnSubStart7905622,
        ["7905623"] = self.OnSubStart7905623,
        ["7905630"] = self.OnSubStart7905630,
        ["7905631"] = self.OnSubStart7905631,
        ["7905632"] = self.OnSubStart7905632,
        ["7905633"] = self.OnSubStart7905633,
        ["7905603"] = self.OnSubStart7905603,
        ["7905604"] = self.OnSubStart7905604,
        ["7905606"] = self.OnSubStart7905606,
        ["7905607"] = self.OnSubStart7905607,
        ["7905608"] = self.OnSubStart7905608,
        ["7905620"] = self.OnSubStart7905620,
        ["7905618"] = self.OnSubStart7905618,
        ["7905617"] = self.OnSubStart7905617,
        ["7905614"] = self.OnSubStart7905614,
        ["7905613"] = self.OnSubStart7905613,
        ["7905612"] = self.OnSubStart7905612,
        ["7905625"] = self.OnSubStart7905625,
        ["7905626"] = self.OnSubStart7905626,
        ["7905627"] = self.OnSubStart7905627,
        ["7905629"] = self.OnSubStart7905629,
        ["7905628"] = self.OnSubStart7905628
    }
end

function Quest79056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905601"] = self.OnSubFinish7905601,
        ["7905609"] = self.OnSubFinish7905609,
        ["7905610"] = self.OnSubFinish7905610,
        ["7905611"] = self.OnSubFinish7905611,
        ["7905621"] = self.OnSubFinish7905621,
        ["7905624"] = self.OnSubFinish7905624,
        ["7905602"] = self.OnSubFinish7905602,
        ["7905605"] = self.OnSubFinish7905605,
        ["7905615"] = self.OnSubFinish7905615,
        ["7905616"] = self.OnSubFinish7905616,
        ["7905619"] = self.OnSubFinish7905619,
        ["7905622"] = self.OnSubFinish7905622,
        ["7905623"] = self.OnSubFinish7905623,
        ["7905630"] = self.OnSubFinish7905630,
        ["7905631"] = self.OnSubFinish7905631,
        ["7905632"] = self.OnSubFinish7905632,
        ["7905633"] = self.OnSubFinish7905633,
        ["7905603"] = self.OnSubFinish7905603,
        ["7905604"] = self.OnSubFinish7905604,
        ["7905606"] = self.OnSubFinish7905606,
        ["7905607"] = self.OnSubFinish7905607,
        ["7905608"] = self.OnSubFinish7905608,
        ["7905620"] = self.OnSubFinish7905620,
        ["7905618"] = self.OnSubFinish7905618,
        ["7905617"] = self.OnSubFinish7905617,
        ["7905614"] = self.OnSubFinish7905614,
        ["7905613"] = self.OnSubFinish7905613,
        ["7905612"] = self.OnSubFinish7905612,
        ["7905625"] = self.OnSubFinish7905625,
        ["7905626"] = self.OnSubFinish7905626,
        ["7905627"] = self.OnSubFinish7905627,
        ["7905629"] = self.OnSubFinish7905629,
        ["7905628"] = self.OnSubFinish7905628
    }
end

function Quest79056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79056:Start()
    print("Start")
end

function Quest79056:OnDestroy()
    print("OnDestroy")
end

function Quest79056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79056:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79056:OnSubStart7905601(arg1)
    print("OnSubStart7905601")
end

function Quest79056:OnSubFinish7905601(arg1)
    print("OnSubFinish7905601")
end

function Quest79056:OnSubStart7905609(arg1)
    print("OnSubStart7905609")
end

function Quest79056:OnSubFinish7905609(arg1)
    print("OnSubFinish7905609")
end

function Quest79056:OnSubStart7905610(arg1)
    print("OnSubStart7905610")
end

function Quest79056:OnSubFinish7905610(arg1)
    print("OnSubFinish7905610")
end

function Quest79056:OnSubStart7905611(arg1)
    print("OnSubStart7905611")
end

function Quest79056:OnSubFinish7905611(arg1)
    print("OnSubFinish7905611")
end

function Quest79056:OnSubStart7905621(arg1)
    print("OnSubStart7905621")
end

function Quest79056:OnSubFinish7905621(arg1)
    print("OnSubFinish7905621")
    globalActor:PlayerEnterDungeon(14, 2191, false, nil, 0)
end

function Quest79056:OnSubStart7905624(arg1)
    print("OnSubStart7905624")
end

function Quest79056:OnSubFinish7905624(arg1)
    print("OnSubFinish7905624")
    this:TransmitPlayerById(arg1, 1)
end

function Quest79056:OnSubStart7905602(arg1)
    print("OnSubStart7905602")
end

function Quest79056:OnSubFinish7905602(arg1)
    print("OnSubFinish7905602")
end

function Quest79056:OnSubStart7905605(arg1)
    print("OnSubStart7905605")
end

function Quest79056:OnSubFinish7905605(arg1)
    print("OnSubFinish7905605")
end

function Quest79056:OnSubStart7905615(arg1)
    print("OnSubStart7905615")
end

function Quest79056:OnSubFinish7905615(arg1)
    print("OnSubFinish7905615")
end

function Quest79056:OnSubStart7905616(arg1)
    print("OnSubStart7905616")
end

function Quest79056:OnSubFinish7905616(arg1)
    print("OnSubFinish7905616")
end

function Quest79056:OnSubStart7905619(arg1)
    print("OnSubStart7905619")
end

function Quest79056:OnSubFinish7905619(arg1)
    print("OnSubFinish7905619")
end

function Quest79056:OnSubStart7905622(arg1)
    print("OnSubStart7905622")
end

function Quest79056:OnSubFinish7905622(arg1)
    print("OnSubFinish7905622")
end

function Quest79056:OnSubStart7905623(arg1)
    print("OnSubStart7905623")
end

function Quest79056:OnSubFinish7905623(arg1)
    print("OnSubFinish7905623")
end

function Quest79056:OnSubStart7905630(arg1)
    print("OnSubStart7905630")
end

function Quest79056:OnSubFinish7905630(arg1)
    print("OnSubFinish7905630")
end

function Quest79056:OnSubStart7905631(arg1)
    print("OnSubStart7905631")
end

function Quest79056:OnSubFinish7905631(arg1)
    print("OnSubFinish7905631")
end

function Quest79056:OnSubStart7905632(arg1)
    print("OnSubStart7905632")
end

function Quest79056:OnSubFinish7905632(arg1)
    print("OnSubFinish7905632")
end

function Quest79056:OnSubStart7905633(arg1)
    print("OnSubStart7905633")
end

function Quest79056:OnSubFinish7905633(arg1)
    print("OnSubFinish7905633")
end

function Quest79056:OnSubStart7905603(arg1)
    print("OnSubStart7905603")
end

function Quest79056:OnSubFinish7905603(arg1)
    print("OnSubFinish7905603")
end

function Quest79056:OnSubStart7905604(arg1)
    print("OnSubStart7905604")
end

function Quest79056:OnSubFinish7905604(arg1)
    print("OnSubFinish7905604")
end

function Quest79056:OnSubStart7905606(arg1)
    print("OnSubStart7905606")
end

function Quest79056:OnSubFinish7905606(arg1)
    print("OnSubFinish7905606")
end

function Quest79056:OnSubStart7905607(arg1)
    print("OnSubStart7905607")
end

function Quest79056:OnSubFinish7905607(arg1)
    print("OnSubFinish7905607")
end

function Quest79056:OnSubStart7905608(arg1)
    print("OnSubStart7905608")
end

function Quest79056:OnSubFinish7905608(arg1)
    print("OnSubFinish7905608")
end

function Quest79056:OnSubStart7905620(arg1)
    print("OnSubStart7905620")
end

function Quest79056:OnSubFinish7905620(arg1)
    print("OnSubFinish7905620")
end

function Quest79056:OnSubStart7905618(arg1)
    print("OnSubStart7905618")
end

function Quest79056:OnSubFinish7905618(arg1)
    print("OnSubFinish7905618")
end

function Quest79056:OnSubStart7905617(arg1)
    print("OnSubStart7905617")
end

function Quest79056:OnSubFinish7905617(arg1)
    print("OnSubFinish7905617")
end

function Quest79056:OnSubStart7905614(arg1)
    print("OnSubStart7905614")
end

function Quest79056:OnSubFinish7905614(arg1)
    print("OnSubFinish7905614")
end

function Quest79056:OnSubStart7905613(arg1)
    print("OnSubStart7905613")
end

function Quest79056:OnSubFinish7905613(arg1)
    print("OnSubFinish7905613")
end

function Quest79056:OnSubStart7905612(arg1)
    print("OnSubStart7905612")
end

function Quest79056:OnSubFinish7905612(arg1)
    print("OnSubFinish7905612")
end

function Quest79056:OnSubStart7905625(arg1)
    print("OnSubStart7905625")
end

function Quest79056:OnSubFinish7905625(arg1)
    print("OnSubFinish7905625")
end

function Quest79056:OnSubStart7905626(arg1)
    print("OnSubStart7905626")
end

function Quest79056:OnSubFinish7905626(arg1)
    print("OnSubFinish7905626")
end

function Quest79056:OnSubStart7905627(arg1)
    print("OnSubStart7905627")
end

function Quest79056:OnSubFinish7905627(arg1)
    print("OnSubFinish7905627")
end

function Quest79056:OnSubStart7905629(arg1)
    print("OnSubStart7905629")
end

function Quest79056:OnSubFinish7905629(arg1)
    print("OnSubFinish7905629")
end

function Quest79056:OnSubStart7905628(arg1)
    print("OnSubStart7905628")
end

function Quest79056:OnSubFinish7905628(arg1)
    print("OnSubFinish7905628")
end

return Quest79056
