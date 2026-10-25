require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76183 = class("Quest76183", QuestActorProxy)
Quest76183.defaultAlias = "Quest76183"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76183:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76183:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618301"] = self.OnSubStart7618301,
        ["7618302"] = self.OnSubStart7618302,
        ["7618303"] = self.OnSubStart7618303,
        ["7618304"] = self.OnSubStart7618304
    }
end

function Quest76183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618301"] = self.OnSubFinish7618301,
        ["7618302"] = self.OnSubFinish7618302,
        ["7618303"] = self.OnSubFinish7618303,
        ["7618304"] = self.OnSubFinish7618304
    }
end

function Quest76183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618302"] = self.OnSubFailed7618302, ["7618303"] = self.OnSubFailed7618303}
end

function Quest76183:Start()
    print("Start")
end

function Quest76183:OnDestroy()
    print("OnDestroy")
end

function Quest76183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76183:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618303N1080Trigger")
    this:ActorDestroy("Q7618301Trigger", 76183)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:RemoveLocalGadget(73177010, "0")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177035, "3")
    this:RemoveLocalGadget(73167060, "4")
    this:RemoveLocalGadget(73167060, "5")
    this:RecycleAllRes()
end

function Quest76183:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7618301Trigger", 76183)
end

function Quest76183:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618301 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618302 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76183:ActorDestroy(arg1, arg2)
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

function Quest76183:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76183:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76183:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76183:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 3236.828, y = 406.701, z = 9928.058}, 30, 73177007, 10000133, 7618302) then
        actorUtils.FinishQuestWithParam({false}, {7618302})
    else
        if this:GetSubQuestState(7618302) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76183:OnSubStart7618301(arg1)
    print("OnSubStart7618301")
    actorMgr:CreateActorWithPos("Q7618301Trigger", "Actor/Gadget/Q7618301Trigger", 70900002, 0, points.Q7618301Trigger.pos, points.Q7618301Trigger.rot, true, false, 3, nil, 0, 76183)
end

function Quest76183:OnSubFinish7618301(arg1)
    print("OnSubFinish7618301")
end

function Quest76183:OnSubStart7618302(arg1)
    print("OnSubStart7618302")
    this:RepeatSitCheck()
end

function Quest76183:OnSubFinish7618302(arg1)
    print("OnSubFinish7618302")
end

function Quest76183:OnSubFailed7618302(arg1)
    print("OnSubFailed7618302")
    this:RecycleAllRes()
end

function Quest76183:OnSubStart7618303(arg1)
    print("OnSubStart7618303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618303, 0, 40, 0.5, npcs.Npc1080.id)
end

function Quest76183:OnSubFinish7618303(arg1)
    print("OnSubFinish7618303")
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
end

function Quest76183:OnSubFailed7618303(arg1)
    print("OnSubFailed7618303")
    this:RecycleAllRes()
end

function Quest76183:OnSubStart7618304(arg1)
    print("OnSubStart7618304")
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:CreateLocalGadget(73177010, "0", {x = 3233.725, y = 407.201, z = 9943.307}, {x = 0, y = 56.878, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 3232.733, y = 407.201, z = 9942.479}, {x = 0, y = 56.879, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 3234.551, y = 407.201, z = 9943.846}, {x = 0, y = 234.677, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "3", {x = 3233.718, y = 408.011, z = 9943.303}, {x = 0, y = 56.88, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "4", {x = 3234.058, y = 407.967, z = 9943.523}, {x = 0, y = 56.89, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73167060, "5", {x = 3233.404, y = 407.976, z = 9943.097}, {x = 0, y = 56.89, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76183:OnSubFinish7618304(arg1)
    print("OnSubFinish7618304")
    this:NpcDestroyImmediately(3, npcs.Npc1080.alias)
    this:RecycleAllRes()
end

return Quest76183
