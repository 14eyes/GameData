require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76219 = class("Quest76219", QuestActorProxy)
Quest76219.defaultAlias = "Quest76219"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76219:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7621901"] = self.OnSubStart7621901,
        ["7621902"] = self.OnSubStart7621902,
        ["7621903"] = self.OnSubStart7621903
    }
end

function Quest76219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7621901"] = self.OnSubFinish7621901,
        ["7621902"] = self.OnSubFinish7621902,
        ["7621903"] = self.OnSubFinish7621903
    }
end

function Quest76219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7621902"] = self.OnSubFailed7621902}
end

function Quest76219:Start()
    print("Start")
end

function Quest76219:OnDestroy()
    print("OnDestroy")
end

function Quest76219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76219:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7621903N1318Trigger")
    this:ActorDestroy("Q7621901Trigger", 76219)
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:RecycleAllRes()
end

function Quest76219:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7621901Trigger", 76219)
end

function Quest76219:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 762190701 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 762190702 then
        this:SetQuestVarByMainId(1, 1)
    else
        if false then
        end
    end
end

function Quest76219:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76219:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest76219:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76219:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76219:RepeatSitCheck()
    if actorUtils.IsAvatarSit() == true then
        this:SitCheck()
    else
        this:CallOnAvatarSit(function(arg1)
            this:SitCheck()
        end)
    end
end

function Quest76219:SitCheck()
    if this:CheckAvatarSitEvent({x = 2657.092, y = 334.922, z = 4659.848}, nil, 73177007, 10000133, 7621902) then
        actorUtils.FinishQuestWithParam({false}, {7621902})
    else
        if this:GetSubQuestState(7621902) == 2 then
            this:CallOnAvatarStand(function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76219:OnSubStart7621901(arg1)
    print("OnSubStart7621901")
    actorMgr:CreateActorWithPos("Q7621901Trigger", "Actor/Gadget/Q7621901Trigger", 70900002, 0, points.Q7621901Trigger.pos, points.Q7621901Trigger.rot, true, false, 3, nil, 0, 76219)
end

function Quest76219:OnSubFinish7621901(arg1)
    print("OnSubFinish7621901")
end

function Quest76219:OnSubStart7621902(arg1)
    print("OnSubStart7621902")
    this:RepeatSitCheck()
end

function Quest76219:OnSubFinish7621902(arg1)
    print("OnSubFinish7621902")
end

function Quest76219:OnSubFailed7621902(arg1)
    print("OnSubFailed7621902")
    this:RecycleAllRes()
end

function Quest76219:OnSubStart7621903(arg1)
    print("OnSubStart7621903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7621903, 0, 60, 0.5, npcs.Npc1318_1.id)
end

function Quest76219:OnSubFinish7621903(arg1)
    print("OnSubFinish7621903")
    this:NpcDestroyWithDither(3, npcs.Npc1318_1.alias)
    this:ActionSafeCall(nil)
end

return Quest76219
